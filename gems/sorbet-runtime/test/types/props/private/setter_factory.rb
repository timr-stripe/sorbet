# frozen_string_literal: true
require_relative '../../../test_helper'

class Opus::Types::Test::Props::Private::SetterFactoryTest < Critic::Unit::UnitTest
  class TestSetValidate
    include T::Props
    include T::Props::WeakConstructor

    prop :validated, T.untyped, setter_validate: (lambda do |instance, _, _|
      # checks that we really have access to an instance; important to assert exception messages
      instance.some_method
      raise Error.new 'invalid'
    end)
    prop :nilable_validated, T.nilable(Integer), setter_validate: -> (_, _, _) { raise Error.new 'invalid' }

    def some_method; end
  end

  describe 'set_validator' do
    it 'runs when setting' do
      obj = TestSetValidate.new
      ex = assert_raises { obj.validated = 5 }
      assert_equal('invalid', ex.message)
    end

    it 'runs when constructing' do
      ex = assert_raises { TestSetValidate.new(validated: 5) }
      assert_equal('invalid', ex.message)
    end

    it 'does not run when a nilable is nil' do
      TestSetValidate.new(nilable_validated: nil)
    end

    it 'runs when a nilable is non-nil' do
      ex = assert_raises { TestSetValidate.new(nilable_validated: 5) }
      assert_equal('invalid', ex.message)
    end

    it 'does not run when validate_prop_value is called' do
      TestSetValidate.new(validated: 5)
    end
  end
end
