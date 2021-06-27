#import "BsFlutterModalPlugin.h"
#if __has_include(<bs_flutter_modal/bs_flutter_modal-Swift.h>)
#import <bs_flutter_modal/bs_flutter_modal-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "bs_flutter_modal-Swift.h"
#endif

@implementation BsFlutterModalPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBsFlutterModalPlugin registerWithRegistrar:registrar];
}
@end
