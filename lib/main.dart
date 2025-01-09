import 'package:flutter/material.dart';
import 'package:personal_finance_tracker/core/global_config.dart';
import 'package:personal_finance_tracker/presentation/core/app_widgets.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GlobalConfig.initConfig();
  runApp(const AppWidget());
}
