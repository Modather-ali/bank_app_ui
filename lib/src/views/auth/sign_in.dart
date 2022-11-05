import '../../../packages.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final bool _checkboxValue = false;
  bool _showPasswrd = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: Get.height / 10,
              ),
              child: const Text(
                "Welcome Back!",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 35,
              bottom: 60,
              left: 50,
              right: 50,
            ),
            child: Text(
              "Sign in to continue",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Color.fromRGBO(28, 25, 57, 0.8),
              ),
            ),
          ),
          AuthTextField(
            fieldName: "Email Address",
          ),
          AuthTextField(
            fieldName: "Password",
            obscureText: _showPasswrd,
            suffixIcon: InkWell(
              child: _showPasswrd
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
              onTap: () {
                setState(() {
                  _showPasswrd = !_showPasswrd;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 15, 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text("Forget Password?"),
              ],
            ),
          ),
          const CustomButton(
            titleText: "Sign in my Account",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? -",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.off(() => const SignUpScreen());
                  },
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
