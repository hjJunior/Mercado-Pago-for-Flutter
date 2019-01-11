#import "MercadopagoPlugin.h"
#import <mercadopago/mercadopago-Swift.h>

@implementation MercadopagoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMercadopagoPlugin registerWithRegistrar:registrar];
}
@end
