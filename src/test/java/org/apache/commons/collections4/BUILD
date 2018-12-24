java_library(
    name = "collections4",
    srcs = glob(["**/*.java"]),
    javacopts = ["-XepDisableAllChecks"],
    deps = [
        "//:collections4",
        "//third_party:junit_junit",
        "//third_party:org_apache_commons_commons_lang3",
        "//third_party:org_easymock_easymock",
        "//third_party:org_hamcrest_hamcrest_core",
        "//third_party:org_objenesis_objenesis",
    ],
)

java_test(
    name = "ArrayStackTest",
    data = ["//src/test/resources"],
    test_class = "org.apache.commons.collections4.ArrayStackTest",
    runtime_deps = [
        ":collections4",
        "//:collections4",
        "//third_party:junit_junit",
    ],
)
