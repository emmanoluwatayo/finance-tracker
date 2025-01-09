import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_finance_tracker/application/services/shared_prefs_storage_services.dart';
import 'package:personal_finance_tracker/core/dependency_injectables/injection.dart';
import 'package:personal_finance_tracker/firebase_options.dart';

class GlobalConfig {
  static late SharedPrefsStorageService storageService;

  static Future<void> initConfig() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    configureDependencies(Environment.prod);
    storageService = await SharedPrefsStorageService().init();

    // await RemoteConfig.fetchApiKey(
    //   apiKeyName: AppStrings.NIN_VERIFICATION_API_KEY,
    // );

    // await RemoteConfig.fetchApiKey(
    //   apiKeyName: AppStrings.FLUTTERWAVE_API_PUBLIC_KEY,
    // );
  }
}
