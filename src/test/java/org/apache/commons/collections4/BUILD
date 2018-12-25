load("//src/test:junit.bzl", "junit_tests")

java_library(
    name = "support",
    srcs = glob(
        ["**/*.java"],
        exclude = ["**/*Test.java"],
    ),
    javacopts = ["-XepDisableAllChecks"],
    deps = [
        "//src/main/java/org/apache/commons/collections4",
        "//third_party:junit_junit",
        "//third_party:org_apache_commons_commons_lang3",
        "//third_party:org_easymock_easymock",
        "//third_party:org_hamcrest_hamcrest_core",
        "//third_party:org_objenesis_objenesis",
    ],
)

junit_tests(
    name = "tests",
    srcs = glob(["**/*Test.java"]),
    data = ["//src/test/resources"],
    javacopts = ["-XepDisableAllChecks"],
    deps = [
        ":support",
        "//src/main/java/org/apache/commons/collections4",
        "//third_party:junit_junit",
        "//third_party:org_apache_commons_commons_lang3",
        "//third_party:org_easymock_easymock",
        "//third_party:org_hamcrest_hamcrest_core",
        "//third_party:org_objenesis_objenesis",
    ],
)
