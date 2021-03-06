load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

# We define our externals here instead of directly in WORKSPACE
def register_sorbet_dependencies():
    http_archive(
        name = "com_google_googletest",
        url = "https://github.com/google/googletest/archive/90a443f9c2437ca8a682a1ac625eba64e1d74a8a.zip",
        sha256 = "6fb9a49ad77656c860cfdafbb3148a91f076a3a8bda9c6d8809075c832549dd4",
        strip_prefix = "googletest-90a443f9c2437ca8a682a1ac625eba64e1d74a8a",
    )

    http_archive(
        name = "yaml_cpp",
        url = "https://github.com/jbeder/yaml-cpp/archive/yaml-cpp-0.6.2.zip",
        sha256 = "292c8de66bfda19a2ca08a32a8c1ec39b709ac75f54e6be0735940db2dbdff76",
        build_file = "@com_stripe_ruby_typer//third_party:yaml_cpp.BUILD",
        strip_prefix = "yaml-cpp-yaml-cpp-0.6.2",
    )

    http_archive(
        name = "spdlog",
        url = "https://github.com/gabime/spdlog/archive/a7148b718ea2fabb8387cb90aee9bf448da63e65.zip",  # v1.3.1
        sha256 = "115ba04ec00988955a54e52791d18e7ac99d2a4a00a361dc00ca7032d0890faa",
        build_file = "@com_stripe_ruby_typer//third_party:spdlog.BUILD",
        strip_prefix = "spdlog-a7148b718ea2fabb8387cb90aee9bf448da63e65",
    )

    # proto_library, cc_proto_library, and java_proto_library rules implicitly
    # depend on @com_google_protobuf for protoc and proto runtimes.
    # This statement defines the @com_google_protobuf repo.
    http_archive(
        name = "com_google_protobuf",
        sha256 = "e4f8bedb19a93d0dccc359a126f51158282e0b24d92e0cad9c76a9699698268d",
        strip_prefix = "protobuf-3.11.2",
        urls = ["https://github.com/protocolbuffers/protobuf/archive/v3.11.2.zip"],
    )

    http_archive(
        name = "libprotobuf-mutator",
        url = "https://github.com/google/libprotobuf-mutator/archive/d761b622751ae8c226db3d8daaaf4c6aab5e5243.zip",
        sha256 = "2083e7e502530fd6cc5eea3fd36ed72968d055cf3675569854f24e4ebd08903a",
        build_file = "@com_stripe_ruby_typer//third_party:libprotobuf-mutator.BUILD",
        strip_prefix = "libprotobuf-mutator-d761b622751ae8c226db3d8daaaf4c6aab5e5243",
    )

    http_archive(
        name = "lmdb",
        url = "https://github.com/DarkDimius/lmdb/archive/15a9c2604e3401593110ddf6c9e2e16a4b28e68e.zip",
        sha256 = "f633f39c5be156deb950839d5f905fcd2e325a7cb82b095950a28590ba82450b",
        build_file = "@com_stripe_ruby_typer//third_party:lmdb.BUILD",
        strip_prefix = "lmdb-15a9c2604e3401593110ddf6c9e2e16a4b28e68e",
    )

    http_archive(
        name = "rapidjson",
        url = "https://github.com/Tencent/rapidjson/archive/d87b698d0fcc10a5f632ecbc80a9cb2a8fa094a5.zip",
        sha256 = "5428830eae1e19d0436e64b214c727aab4a33379129cdede11b0507974ad134f",
        build_file = "@com_stripe_ruby_typer//third_party:rapidjson.BUILD",
        strip_prefix = "rapidjson-d87b698d0fcc10a5f632ecbc80a9cb2a8fa094a5",
    )

    http_archive(
        name = "lizard",
        url = "https://github.com/inikep/lizard/archive/dda3b335e92ecd5caceccc9c577b39dd4e3c9950.zip",
        sha256 = "1d4e8c17d40ec56b7ecad60bcf4a9065df73d7e5997f78e75dbe5fc662ce6aa8",
        build_file = "@com_stripe_ruby_typer//third_party:lizard.BUILD",
        strip_prefix = "lizard-dda3b335e92ecd5caceccc9c577b39dd4e3c9950",
    )

    http_archive(
        name = "pdqsort",
        url = "https://github.com/orlp/pdqsort/archive/08879029ab8dcb80a70142acb709e3df02de5d37.zip",
        sha256 = "ad8c9cd3d1abe5d566bad341bcce327a2e897b64236a7f9e74f4b9b0e7e5dc39",
        build_file = "@com_stripe_ruby_typer//third_party:pdqsort.BUILD",
        strip_prefix = "pdqsort-08879029ab8dcb80a70142acb709e3df02de5d37",
    )

    http_archive(
        name = "jemalloc",
        url = "https://github.com/jemalloc/jemalloc/archive/ea6b3e973b477b8061e0076bb257dbd7f3faa756.zip",  # 5.2.1
        sha256 = "7822c5cb2d06a2665cdbbcd5d949f09b92ef5b891ad8354c6382a3614c9cc9cc",
        build_file = "@com_stripe_ruby_typer//third_party:jemalloc.BUILD",
        strip_prefix = "jemalloc-ea6b3e973b477b8061e0076bb257dbd7f3faa756",
    )

    http_archive(
        name = "concurrentqueue",
        url = "https://github.com/cameron314/concurrentqueue/archive/79cec4c3bf1ca23ea4a03adfcd3c2c3659684dd2.zip",
        sha256 = "a78ff232e2996927ad6fbd015d1f15dfb20bf524a87ce2893e64dbbe1f04051e",
        build_file = "@com_stripe_ruby_typer//third_party:concurrentqueue.BUILD",
        strip_prefix = "concurrentqueue-79cec4c3bf1ca23ea4a03adfcd3c2c3659684dd2",
    )

    http_archive(
        name = "statsd",
        url = "https://github.com/romanbsd/statsd-c-client/archive/0caa5ef05d6a786bb4695394534a7182a3c94427.zip",
        sha256 = "0c67e994fb809ac9b0fd2216333b0dff5592401f81dc04fb7a0c2179d6b76dca",
        build_file = "@com_stripe_ruby_typer//third_party:statsd.BUILD",
        strip_prefix = "statsd-c-client-0caa5ef05d6a786bb4695394534a7182a3c94427",
    )

    http_archive(
        name = "cxxopts",
        url = "https://github.com/jarro2783/cxxopts/archive/cb60381e84df99a4829e3d3c657c06380f916d0f.zip",
        sha256 = "69b1e8d5145567f552db476ab3c3bb769c1790f4e40b4d3901de1d233c94b78b",
        build_file = "@com_stripe_ruby_typer//third_party:cxxopts.BUILD",
        strip_prefix = "cxxopts-cb60381e84df99a4829e3d3c657c06380f916d0f",
    )

    http_archive(
        name = "rang",
        url = "https://github.com/agauniyal/rang/archive/v3.1.0.zip",
        sha256 = "658adeb8a36d36981d4339fc839f2deedc0e75cb421db1982041d8a0a255835d",
        build_file = "@com_stripe_ruby_typer//third_party:rang.BUILD",
        strip_prefix = "rang-3.1.0",
    )

    http_archive(
        name = "com_google_absl",
        url = "https://github.com/abseil/abseil-cpp/archive/d9aa92d7fb324314f9df487ac23d32a25650b742.zip",
        sha256 = "caf4c323eb6211397df96dd5ff96e46c7e5dd77c74d3daed2181f87868159eca",
        strip_prefix = "abseil-cpp-d9aa92d7fb324314f9df487ac23d32a25650b742",
    )

    http_archive(
        name = "compdb",
        url = "https://github.com/grailbio/bazel-compilation-database/archive/0ae6349c52700f060c9a87c5ed2b04b75f94a26f.zip",
        sha256 = "40ad122fedbf2d8b23e70e16b5f49c1a316f02db3ed29ce1af8650dad6ccc1a9",
        build_file_content = (
            """
package(default_visibility = ["//visibility:public"])
"""
        ),
        strip_prefix = "bazel-compilation-database-0ae6349c52700f060c9a87c5ed2b04b75f94a26f",
    )

    # NOTE: using this branch:
    # https://github.com/DarkDimius/bazel-toolchain/tree/dp-srb-now
    http_archive(
        name = "com_grail_bazel_toolchain",
        url = "https://github.com/DarkDimius/bazel-toolchain/archive/dce4dc28a78fc7d2c89439cf40327e2b3da20d5c.zip",
        sha256 = "f1545a86e59eb026bbbfa6ed45a4118bc7fd544882ddbed9aea080cf7dfe08cd",
        strip_prefix = "bazel-toolchain-dce4dc28a78fc7d2c89439cf40327e2b3da20d5c",
    )

    http_archive(
        name = "io_bazel_rules_go",
        url = "https://github.com/bazelbuild/rules_go/archive/dd4fb4f8128b83f189f7bdda663e65b915a6d3c4.zip",
        sha256 = "ea702009018b6a5d6665808a4d1f54e2f40a2938e3946e98de00d38b34fd8a27",
        strip_prefix = "rules_go-dd4fb4f8128b83f189f7bdda663e65b915a6d3c4",
    )

    http_archive(
        name = "com_github_bazelbuild_buildtools",
        url = "https://github.com/bazelbuild/buildtools/archive/5bcc31df55ec1de770cb52887f2e989e7068301f.zip",
        sha256 = "875d0c49953e221cfc35d2a3846e502f366dfa4024b271fa266b186ca4664b37",
        strip_prefix = "buildtools-5bcc31df55ec1de770cb52887f2e989e7068301f",
    )

    # optimized version of blake2 hashing algorithm
    http_archive(
        name = "com_github_blake2_libb2",
        url = "https://github.com/BLAKE2/libb2/archive/fa83ddbe179912e9a7a57edf0333b33f6ff83056.zip",
        sha256 = "dd25f7ac53371c2a15761fc1689d04de2ff948ac7e213a10d13961e24b0c9ae6",
        build_file = "@com_stripe_ruby_typer//third_party:libb2.BUILD",
        strip_prefix = "libb2-fa83ddbe179912e9a7a57edf0333b33f6ff83056",
    )

    # portable reference implementation of blake2
    http_archive(
        name = "com_github_blake2_blake2",
        url = "https://github.com/BLAKE2/BLAKE2/archive/997fa5ba1e14b52c554fb03ce39e579e6f27b90c.zip",
        sha256 = "56dafe9512f65728ce7abc78900272f8bf8e95ca04439b362d2dc461927b2a17",
        build_file = "@com_stripe_ruby_typer//third_party:blake2.BUILD",
        strip_prefix = "BLAKE2-997fa5ba1e14b52c554fb03ce39e579e6f27b90c",
    )

    http_archive(
        name = "com_github_msgpack_msgpack",
        url = "https://github.com/msgpack/msgpack-c/archive/3129326432dde8d509326ae9720a33f46dd56917.zip",
        sha256 = "bcd2760b6d33b0ad5f8ed895be8ccdb4edea3134378f0bb1b856f98f3a03f0f2",
        build_file = "@com_stripe_ruby_typer//third_party:msgpack.BUILD",
        strip_prefix = "msgpack-c-3129326432dde8d509326ae9720a33f46dd56917",
    )

    http_archive(
        name = "com_github_d_bahr_crcpp",
        url = "https://github.com/d-bahr/CRCpp/archive/534c1d8c5517cfbb0a0f1ff0d9ec4c8b8ffd78e2.zip",
        sha256 = "c8adb9b91072e3578f0af802a4abc3c68109301dc6ef0708b34863d168e39747",
        build_file = "@com_stripe_ruby_typer//third_party:crcpp.BUILD",
        strip_prefix = "CRCpp-534c1d8c5517cfbb0a0f1ff0d9ec4c8b8ffd78e2",
    )

    http_archive(
        name = "emscripten_toolchain",
        url = "https://github.com/kripken/emscripten/archive/1.38.25.tar.gz",
        build_file = "@com_stripe_ruby_typer//third_party:emscripten-toolchain.BUILD",
        sha256 = "4d6fa350895fabc25b89ce5f9dcb528e719e7c2bf7dacab2a3e3cc818ecd7019",
        strip_prefix = "emscripten-1.38.25",
    )

    http_archive(
        name = "emscripten_clang_linux",
        url = "https://storage.googleapis.com/webassembly/emscripten-releases-builds/old/linux/emscripten-llvm-e1.38.25.tar.gz",
        build_file = "@com_stripe_ruby_typer//third_party:emscripten-clang.BUILD",
        sha256 = "0e9a5a114a60c21604f4038b573109bd31424aeba275b4173480485ca0a56ba4",
        strip_prefix = "emscripten-llvm-e1.38.25",
    )

    http_archive(
        name = "emscripten_clang_darwin",
        url = "https://storage.googleapis.com/webassembly/emscripten-releases-builds/old/mac/emscripten-llvm-e1.38.25.tar.gz",
        build_file = "@com_stripe_ruby_typer//third_party:emscripten-clang.BUILD",
        sha256 = "01519125c613d0b013193eaf5ac5031e6ec34aac2451c357fd4097874ceee38c",
        strip_prefix = "emscripten-llvm-e1.38.25",
    )

    http_archive(
        name = "rules_ragel",
        url = "https://github.com/jmillikin/rules_ragel/archive/f99f17fcad2e155646745f4827ac636a3b5d4d15.zip",
        sha256 = "f957682c6350b2e4484c433c7f45d427a86de5c8751a0d2a9836f36995fe0320",
        strip_prefix = "rules_ragel-f99f17fcad2e155646745f4827ac636a3b5d4d15",
    )

    http_archive(
        name = "rules_bison",
        url = "https://github.com/jmillikin/rules_bison/releases/download/v0.2/rules_bison-v0.2.tar.xz",
        sha256 = "6ee9b396f450ca9753c3283944f9a6015b61227f8386893fb59d593455141481",
    )

    http_archive(
        name = "rules_m4",
        url = "https://github.com/jmillikin/rules_m4/releases/download/v0.2/rules_m4-v0.2.tar.xz",
        sha256 = "c67fa9891bb19e9e6c1050003ba648d35383b8cb3c9572f397ad24040fb7f0eb",
    )

    http_archive(
        name = "cpp_subprocess",
        url = "https://github.com/arun11299/cpp-subprocess/archive/6931e3d69fb36e6eae099585646e54ac644bf99c.zip",
        sha256 = "aa06e3749687c236a311ff93a0b973582a41a9effbc0126b0e101c05f3391bdc",
        build_file = "@com_stripe_ruby_typer//third_party:cpp_subprocess.BUILD",
        strip_prefix = "cpp-subprocess-6931e3d69fb36e6eae099585646e54ac644bf99c",
    )

    http_file(
        name = "bundler_2_1_4",
        urls = ["https://rubygems.org/downloads/bundler-2.1.4.gem"],
        sha256 = "50014d21d6712079da4d6464de12bb93c278f87c9200d0b60ba99f32c25af489",
    )

    http_archive(
        name = "ruby_2_4",
        url = "https://cache.ruby-lang.org/pub/ruby/2.4/ruby-2.4.3.tar.gz",
        sha256 = "fd0375582c92045aa7d31854e724471fb469e11a4b08ff334d39052ccaaa3a98",
        strip_prefix = "ruby-2.4.3",
        build_file = "@com_stripe_ruby_typer//third_party/ruby:ruby.BUILD",
    )

    http_archive(
        name = "ruby_2_6",
        url = "https://cache.ruby-lang.org/pub/ruby/2.6/ruby-2.6.5.tar.gz",
        sha256 = "66976b716ecc1fd34f9b7c3c2b07bbd37631815377a2e3e85a5b194cfdcbed7d",
        strip_prefix = "ruby-2.6.5",
        build_file = "@com_stripe_ruby_typer//third_party/ruby:ruby.BUILD",
    )

    http_archive(
        name = "zlib_static",
        url = "https://zlib.net/zlib-1.2.11.tar.gz",
        sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
        strip_prefix = "zlib-1.2.11",
        build_file = "@com_stripe_ruby_typer//third_party:zlib.BUILD",
    )

    native.new_local_repository(
        name = "system_ssl_darwin",
        path = "/usr/local/opt/openssl",
        build_file = "@com_stripe_ruby_typer//third_party/openssl:darwin.BUILD",
    )

    native.new_local_repository(
        name = "system_ssl_linux",
        path = "/usr",
        build_file = "@com_stripe_ruby_typer//third_party/openssl:linux.BUILD",
    )
