// Generated by uniffi-bindgen-react-native
#include "uniffi-add.h"
#include "generated/uniffi_add.hpp"

namespace uniffiadd {
	using namespace facebook;

	uint8_t installRustCrate(jsi::Runtime &runtime, std::shared_ptr<react::CallInvoker> callInvoker) {
		NativeUniffiAdd::registerModule(runtime, callInvoker);
		return true;
	}

	uint8_t cleanupRustCrate(jsi::Runtime &runtime) {
		return false;
	}
}