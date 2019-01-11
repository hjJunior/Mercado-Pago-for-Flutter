import Flutter
import UIKit
import MercadoPagoSDK

public class SwiftMercadopagoPlugin: NSObject, FlutterPlugin, PXLazyInitProtocol, PXLifeCycleProtocol {
    public func cancelCheckout() -> (() -> Void)? {
        print("cancelCheckout")
        return nil
    }
    
    public func finishCheckout() -> ((PXResult?) -> Void)? {
        print("finishCheckout")
        return nil
    }
    
    
    public func didFinish(checkout: MercadoPagoCheckout) {
        print("didFinish")
    }
    
    public func failure(checkout: MercadoPagoCheckout) {
        print("failure")
    }
    
    private var checkout: MercadoPagoCheckout?
    
    public static func register(with registrar: FlutterPluginRegistrar) {
//        let channel = FlutterMethodChannel(name: "mercadopago", binaryMessenger: registrar.messenger())
//        let instance = SwiftMercadopagoPlugin()
//        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
//        runMercadoPagoCheckoutWithLifecycle()
        // result("iOS " + UIDevice.current.systemVersion)
    }
}
