import 'packages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bankee',
      theme: ThemeData(
        fontFamily: "Inter",
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF7165e3),
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const SignUpScreen(),
    );
  }
}
