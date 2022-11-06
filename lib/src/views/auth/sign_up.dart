import '../../../packages.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _checkboxValue = false;
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
                "Welcome!",
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
              "Please provide following details for your new account",
              textAlign: TextAlign.center,
              style: normalStyle,
            ),
          ),
          AuthTextField(
            fieldName: "Full Name",
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
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Checkbox(
                value: _checkboxValue,
                // fillColor: Color(0xFF7165e3).withOpacity(0.3),
                focusColor: const Color(0xFF7165e3).withOpacity(0.3),
                activeColor: const Color(0xFF7165e3),

                onChanged: (value) {
                  setState(() {
                    _checkboxValue = value!;
                  });
                },
              ),
              const Expanded(
                child: Text(
                    "By creating your account you have to agree with our Teams and Conditions"),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            titleText: "Sign up my Account",
            onPressed: () {
              Get.off(() => const AccountCreatedScreen());
            },
          ),
          CustomButton(
            titleText: "Sign up with Phone Number",
            color: secondaryColor,
            onPressed: () {
              Get.to(() => const MobileNumberRegisterScreen());
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? -",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.off(() => const SignInScreen());
                  },
                  child: const Text(
                    "Sign in",
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
