import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:mylife/pages.dart';

void main() {
  /// Necessary to initialise Flutter when running native code before
  /// starting the application.
  final binding = WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  /// Ensure no pop-in for the app logo.
  binding.addPostFrameCallback((_) async {
    final context = binding.rootElement;
    if (context != null) {
      precacheImage(const AssetImage('assets/meta/logo.png'), context);
      precacheImage(const AssetImage('assets/meta/light_mode.png'), context);
      precacheImage(const AssetImage('assets/meta/dark_mode.png'), context);
    }
  });
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Life',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 154, 222, 241)),
        useMaterial3: true,
        fontFamily: 'Inter',
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => const BasePage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUp(),
      },
    );
  }
}
