#include <jni.h>
#include "NitroAddOnLoad.hpp"

JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void*) {
  return margelo::nitro::add::initialize(vm);
}
