load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:versioning.bzl", "apple_bundle_version")

swift_library(
    name = "NewsApp",
    srcs = glob([
        "NewsApp/*.swift",
    ]),
    data = [
        # "NewsApp/Base.lproj/Main.storyboard",
    ],
    deps = [
      "//Pods/Alamofire:Alamofire"
    ],
)

apple_bundle_version(
  name = "AppVersion",
  build_version = "1",
  short_version_string = "1.0"
)

ios_application(
    name = "NewsApplication",
    bundle_id = "com.dwirandyh.newsapp",
    families = [
        "iphone",
    ],
    infoplists = [":NewsApp/Info.plist"],
    version = ":AppVersion",
    minimum_os_version = "15.0",
    launch_storyboard = "NewsApp/Base.lproj/LaunchScreen.storyboard",
    deps = [
      ":NewsApp",
      "//Pods/Alamofire:Alamofire"
    ],
)