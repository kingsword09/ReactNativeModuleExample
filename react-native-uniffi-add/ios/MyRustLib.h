// Generated by uniffi-bindgen-react-native
#ifdef __cplusplus
#import "my-rust-lib.h"
#endif

#ifdef RCT_NEW_ARCH_ENABLED
#import "RNUniffiAddSpec.h"

@interface MyRustLib : NSObject <NativeMyRustLibSpec>
#else
#import <React/RCTBridgeModule.h>

@interface MyRustLib : NSObject <RCTBridgeModule>
#endif

@end