allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

rootProject.buildDir = file("../build")

subprojects {
    buildDir = rootProject.buildDir.resolve(name)
}

subprojects {
    afterEvaluate {
        // Check if the "android" extension exists and configure it.
        extensions.findByType<com.android.build.gradle.BaseExtension>()?.let { androidExt ->
            if (androidExt.namespace == null) {
                androidExt.namespace = project.group.toString()
            }
        }
    }
}

subprojects {
 
}

tasks.register<Delete>("clean") {
    delete(rootProject.buildDir)
}
