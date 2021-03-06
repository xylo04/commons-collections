# Generated by https://github.com/bazelbuild/migration-tooling

# The following dependencies were calculated from:
#
# generate_workspace --maven_project=/home/chris/git/commons-collections --repositories=https://repo1.maven.org/maven2/

def generated_maven_jars():
    # pom.xml got requested version
    # org.apache.commons:commons-collections4:jar:4.3-SNAPSHOT
    native.maven_jar(
        name = "org_apache_commons_commons_lang3",
        artifact = "org.apache.commons:commons-lang3:3.8",
        sha1 = "222fc4cf714a63f27cbdafdbd863efd0d30c8a1e",
    )

    # junit:junit:jar:4.12
    native.maven_jar(
        name = "org_hamcrest_hamcrest_core",
        artifact = "org.hamcrest:hamcrest-core:1.3",
        sha1 = "42a25dc3219429f0e5d060061f71acb49bf010a0",
    )

    # org.easymock:easymock:jar:4.0
    native.maven_jar(
        name = "org_objenesis_objenesis",
        artifact = "org.objenesis:objenesis:3.0.1",
        sha1 = "11cfac598df9dc48bb9ed9357ed04212694b7808",
    )

    # pom.xml got requested version
    # org.apache.commons:commons-collections4:jar:4.3-SNAPSHOT
    native.maven_jar(
        name = "junit_junit",
        artifact = "junit:junit:4.12",
        sha1 = "2973d150c0dc1fefe998f834810d68f278ea58ec",
    )

    # pom.xml got requested version
    # org.apache.commons:commons-collections4:jar:4.3-SNAPSHOT
    native.maven_jar(
        name = "org_easymock_easymock",
        artifact = "org.easymock:easymock:4.0",
        sha1 = "1b4683a5321734f46ae31b3e11bdebba86a888ff",
    )

def generated_java_libraries():
    native.java_library(
        name = "org_apache_commons_commons_lang3",
        visibility = ["//visibility:public"],
        exports = ["@org_apache_commons_commons_lang3//jar"],
    )

    native.java_library(
        name = "org_hamcrest_hamcrest_core",
        visibility = ["//visibility:public"],
        exports = ["@org_hamcrest_hamcrest_core//jar"],
    )

    native.java_library(
        name = "org_objenesis_objenesis",
        visibility = ["//visibility:public"],
        exports = ["@org_objenesis_objenesis//jar"],
    )

    native.java_library(
        name = "junit_junit",
        visibility = ["//visibility:public"],
        exports = ["@junit_junit//jar"],
        runtime_deps = [
            ":org_hamcrest_hamcrest_core",
        ],
    )

    native.java_library(
        name = "org_easymock_easymock",
        visibility = ["//visibility:public"],
        exports = ["@org_easymock_easymock//jar"],
        runtime_deps = [
            ":org_objenesis_objenesis",
        ],
    )
