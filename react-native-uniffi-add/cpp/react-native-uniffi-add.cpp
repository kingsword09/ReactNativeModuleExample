// Generated by uniffi-bindgen-react-native
#include "react-native-uniffi-add.h"
#include "generated/react_native_uniffi_add.hpp"

namespace uniffiadd {
	using namespace facebook;

	uint8_t installRustCrate(jsi::Runtime &runtime, std::shared_ptr<react::CallInvoker> callInvoker) {
		NativeReactNativeUniffiAdd::registerModule(runtime, callInvoker);
		return true;
	}

	uint8_t cleanupRustCrate(jsi::Runtime &runtime) {
		return false;
	}
}