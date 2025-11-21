package nl.bgma.installchecker;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "InstallChecker")
public class InstallCheckerPlugin extends Plugin {

    private InstallChecker implementation;

    @Override
    public void load() {
        implementation = new InstallChecker(getContext());
    }

    @PluginMethod
    public void isInstalledFromStore(PluginCall call) {
        JSObject ret = new JSObject();
        ret.put("status", implementation.isInstalledFromStore());
        call.resolve(ret);
    }
}
