import 'app.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

// NOTE: Keep the main this thin
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LIST_OF_LANGS = ['ar', 'en'];
  LANGS_DIR = 'langs/';
  await translator.init();
  runApp(LocalizedApp(child: App()));
}
