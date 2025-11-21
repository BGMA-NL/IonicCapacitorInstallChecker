import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(InstallCheckerPlugin)
public class InstallCheckerPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "InstallCheckerPlugin"
    public let jsName = "InstallChecker"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "isInstalledFromStore", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = InstallChecker()

    @objc func isInstalledFromStore(_ call: CAPPluginCall) {
        call.resolve([
            "status": implementation.isInstalledFromStore()
        ])
    }
}
