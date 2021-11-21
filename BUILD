load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "Sources",
    srcs = glob([
        "NewsApp/*.swift",
    ]),
    data = [
        "NewsApp/Base.lproj/Main.storyboard",
    ],
)

ios_application(
    name = "NewsApp",
    bundle_id = "com.dwirandyh.newsapp",
    families = [
        "iphone",
    ],
    infoplists = [":NewsApp/Info.plist"],
    minimum_os_version = "15.0",
    launch_storyboard = "NewsApp/Base.lproj/LaunchScreen.storyboard",
    deps = [":Sources"],
)