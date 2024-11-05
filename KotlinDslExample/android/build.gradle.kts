plugins {
    id("com.facebook.react.rootproject")
}

// Since some third-party libraries directly use the Android app configuration configured here, add these configurations
extra["buildToolsVersion"] = libs.versions.buildToolsVersion.get()
extra["minSdkVersion"] = libs.versions.minSdkVersion.get().toInt()
extra["compileSdkVersion"] = libs.versions.compileSdkVersion.get().toInt()
extra["targetSdkVersion"] = libs.versions.targetSdkVersion.get().toInt()
extra["ndkVersion"] = libs.versions.ndkVersion.get()

buildscript {
    repositories {
        google()
        mavenCentral()
    }

    dependencies {
        classpath(libs.react.native.gradle.plugin)
    }
}

repositories {
    google()
    mavenCentral()
}
