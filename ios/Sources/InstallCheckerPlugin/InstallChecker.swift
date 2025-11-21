import Foundation

@objc public class InstallChecker: NSObject {
//https://stackoverflow.com/questions/18282326/how-can-i-detect-if-the-currently-running-app-was-installed-from-the-appstore
    @objc public func isInstalledFromStore() -> Bool {
        if isSimulator(){
            return false
        } else {
            if isAppStoreReceiptSandbox() || hasEmbeddedMobileProvision() {
                return false
            } else {
                return true
            }
        }
    }

    // MARK: Private

    private func hasEmbeddedMobileProvision() -> Bool{
        if let _ = Bundle.main.path(forResource: "embedded", ofType: "mobileprovision") {
            return true
        }
        return false
    }
    
    private func isAppStoreReceiptSandbox() -> Bool {
        return isSimulator() == false && Bundle.main.appStoreReceiptURL?.lastPathComponent == "sandboxReceipt"
    }
    
    private func isSimulator() -> Bool {
        #if arch(i386) || arch(x86_64)
            return true
            #else
            return false
        #endif
    }
}
