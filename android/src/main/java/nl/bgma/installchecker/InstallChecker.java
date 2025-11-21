package nl.bgma.installchecker;

import android.content.Context;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class InstallChecker {

    private Context context;

    public InstallChecker(Context context) {
        this.context = context;
    }

    //https://stackoverflow.com/questions/37539949/detect-if-an-app-is-installed-from-play-store
    public Boolean isInstalledFromStore() {
        // A list with valid installers package name
        List<String> validInstallers = new ArrayList<>(Arrays.asList("com.android.vending", "com.google.android.feedback"));

        // The package name of the app that has installed your app
        final String installer = context.getPackageManager().getInstallerPackageName(context.getPackageName());

        // true if your app has been downloaded from Play Store
        return installer != null && validInstallers.contains(installer);
    }
}
