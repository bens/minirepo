load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def workspace_dependencies():
    http_archive(
        name = "bazel_skylib",
        sha256 = "c6966ec828da198c5d9adbaa94c05e3a1c7f21bd012a0b29ba8ddbccb2c93b0d",
        urls = ["https://github.com/bazelbuild/bazel-skylib/releases/download/1.1.1/bazel-skylib-1.1.1.tar.gz"],
    )

    http_archive(
        name = "io_tweag_rules_nixpkgs",
        sha256 = "7aee35c95251c1751e765f7da09c3bb096d41e6d6dca3c72544781a5573be4aa",
        strip_prefix = "rules_nixpkgs-0.8.0",
        urls = ["https://github.com/tweag/rules_nixpkgs/archive/refs/tags/v0.8.0.tar.gz"],
    )

    http_archive(
        name = "rules_sh",
        sha256 = "83a065ba6469135a35786eb741e17d50f360ca92ab2897857475ab17c0d29931",
        strip_prefix = "rules_sh-0.2.0",
        urls = ["https://github.com/tweag/rules_sh/archive/v0.2.0.tar.gz"],
    )

    http_archive(
        name = "rules_python",
        sha256 = "a30abdfc7126d497a7698c29c46ea9901c6392d6ed315171a6df5ce433aa4502",
        strip_prefix = "rules_python-0.6.0",
        urls = ["https://github.com/bazelbuild/rules_python/archive/refs/tags/0.6.0.tar.gz"],
    )

    http_archive(
        name = "rules_haskell",
        sha256 = "851e16edc7c33b977649d66f2f587071dde178a6e5bcfeca5fe9ebbe81924334",
        strip_prefix = "rules_haskell-0.14",
        urls = ["https://github.com/tweag/rules_haskell/archive/v0.14.tar.gz"],
    )

    http_archive(
        name = "io_bazel_rules_go",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.29.0/rules_go-v0.29.0.zip",
            "https://github.com/bazelbuild/rules_go/releases/download/v0.29.0/rules_go-v0.29.0.zip",
        ],
        sha256 = "2b1641428dff9018f9e85c0384f03ec6c10660d935b750e3fa1492a281a53b0f",
    )

    http_archive(
        name = "io_bazel_rules_docker",
        sha256 = "85ffff62a4c22a74dbd98d05da6cf40f497344b3dbf1e1ab0a37ab2a1a6ca014",
        strip_prefix = "rules_docker-0.23.0",
        urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.23.0/rules_docker-v0.23.0.tar.gz"],
    )

    http_archive(
        name = "rules_cc",
        sha256 = "935e2644125fccb36fa858495697301f7834d980d0e16419943b9618af2771a4",
        strip_prefix = "rules_cc-0.0.1",
        urls = ["https://github.com/bazelbuild/rules_cc/archive/refs/tags/0.0.1.tar.gz"],
    )
