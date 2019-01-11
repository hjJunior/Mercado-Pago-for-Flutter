import UIKit
import Flutter
import MercadoPagoSDK

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate, PXLazyInitProtocol, PXLifeCycleProtocol {
    func cancelCheckout() -> (() -> Void)? {
        print("cancelCheckout")
        return nil
    }
    
    func finishCheckout() -> ((PXResult?) -> Void)? {
        print("finishCheckout")
        return nil
    }
    
    func didFinish(checkout: MercadoPagoCheckout) {
        print("didFinish")
        print(checkout)
    }
    
    func failure(checkout: MercadoPagoCheckout) {
        print("failure")
    }
    
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {
    
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    let batteryChannel = FlutterMethodChannel(name: "samples.flutter.io/battery",
                                              binaryMessenger: controller)
    batteryChannel.setMethodCallHandler({
        (call: FlutterMethodCall, result: FlutterResult) -> Void in
        // Handle battery messages.
        
        let builder = MercadoPagoCheckoutBuilder.init(publicKey: "TEST-5a3399aa-fba2-40c8-b99a-7508f10320c2", preferenceId: "187081368-b89bb61d-71bb-4b11-9c33-b8a6b14fb0d2")
        
        // 2) Create Checkout reference
        let checkout = MercadoPagoCheckout.init(builder: builder)
        checkout.start(lazyInitProtocol: self)
        
        GeneratedPluginRegistrant.register(with: self)
        
    })

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
