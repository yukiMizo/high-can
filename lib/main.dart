import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//themes/
import 'themes/app_theme.dart';

//screens/
import 'screens/home_screen.dart';

void main() {
  _init();
  runApp(const ProviderScope(child: MyApp()));
}

Future<void> _init() async {
  //TODO 初期化
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "highcan",
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      themeMode: ThemeMode.system,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (ctx) => const HomeScreen(),
      },
    );
  }
}
