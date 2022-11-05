import '../../../packages.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _showPassword = false;
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
                style: titleStyle,
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
              style: normalStyle,
            ),
          ),
          AuthTextField(
            fieldName: "Email Address",
          ),
          AuthTextField(
            fieldName: "Password",
            obscureText: _showPassword,
            suffixIcon: InkWell(
              child: _showPassword
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
              onTap: () {
                setState(() {
                  _showPassword = !_showPassword;
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
          CustomButton(
            titleText: "Sign in my Account",
            onPressed: () {},
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
