import 'package:buddha/UI/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'UI/login_screen.dart';
import 'UI/landing_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        720.0,
        1280.0,
      ),
      //deneme1
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          initialRoute: '/',
          routes: {
            '/': (context) => LandingScreen(),
            '/register': (context) => const RegisterPage(),
            '/login': ((context) => const LoginPage())
          },
        );
      },
    );
  }
}
