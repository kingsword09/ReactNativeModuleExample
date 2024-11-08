// Generated by uniffi-bindgen-react-native
#import "UniffiAdd.h"

namespace uniffi_generated {
    using namespace facebook::react;
    /**
    * ObjC++ class for module 'NativeUniffiAdd'
    */
    class JSI_EXPORT NativeUniffiAddSpecJSI : public ObjCTurboModule {
    public:
        NativeUniffiAddSpecJSI(const ObjCTurboModule::InitParams &params);
        std::shared_ptr<CallInvoker> callInvoker;
    };

    static facebook::jsi::Value __hostFunction_UniffiAdd_installRustCrate(facebook::jsi::Runtime& rt, TurboModule &turboModule, const facebook::jsi::Value* args, size_t count) {
        auto& tm = static_cast<NativeUniffiAddSpecJSI&>(turboModule);
        auto jsInvoker = tm.callInvoker;
        uint8_t result = uniffiadd::installRustCrate(rt, jsInvoker);
        return facebook::jsi::Value(rt, result);
    }
    static facebook::jsi::Value __hostFunction_UniffiAdd_cleanupRustCrate(facebook::jsi::Runtime& rt, TurboModule &turboModule, const facebook::jsi::Value* args, size_t count) {
        uint8_t result = uniffiadd::cleanupRustCrate(rt);
        return facebook::jsi::Value(rt, result);
    }

    NativeUniffiAddSpecJSI::NativeUniffiAddSpecJSI(const ObjCTurboModule::InitParams &params)
        : ObjCTurboModule(params), callInvoker(params.jsInvoker) {
            this->methodMap_["installRustCrate"] = MethodMetadata {1, __hostFunction_UniffiAdd_installRustCrate};
            this->methodMap_["cleanupRustCrate"] = MethodMetadata {1, __hostFunction_UniffiAdd_cleanupRustCrate};
    }
} // namespace uniffi_generated

@implementation UniffiAdd
RCT_EXPORT_MODULE()

// Don't compile this code when we build for the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED

// Automated testing checks uniffiadd
// by comparing the whole line here.
/*
- (NSNumber *)multiply:(double)a b:(double)b {
    NSNumber *result = @(uniffiadd::multiply(a, b));
}
*/

- (NSNumber *)installRustCrate {
    @throw [NSException exceptionWithName:@"UnreachableException"
                        reason:@"This method should never be called."
                        userInfo:nil];
}

- (NSNumber *)cleanupRustCrate {
    @throw [NSException exceptionWithName:@"UnreachableException"
                        reason:@"This method should never be called."
                        userInfo:nil];
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<uniffi_generated::NativeUniffiAddSpecJSI>(params);
}
#endif

@end