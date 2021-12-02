import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    // add platform channel
        let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
        let methodChannel = FlutterMethodChannel( name: "flutter.native/helper",
                                                    binaryMessenger: controller.binaryMessenger)

        methodChannel.setMethodCallHandler({
            (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in

            let param = call.arguments as [String:Any]

            switch call.method {
                case "testCall":
                    // let lparam = param?["key_1"] as! String
                    // let rparam = param?["key_2"] as! String
                    result("flutter.native/helper: call success")
                    break

                 default:
                    result("method is not implemented with \(call.method)")
            })
        // end of platform channel

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
