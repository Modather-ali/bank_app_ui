import '../../packages.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: Get.height / 9,
              ),
              child: const Text(
                "Welcome!",
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
              "Please provide following details for your new account",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Color.fromRGBO(28, 25, 57, 0.8),
              ),
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
          const CustomButton(
            titleText: "Sign up my Account",
          ),
          CustomButton(
            titleText: "Sign up with Phone Number",
            color: Colors.indigo.shade900,
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
                  onPressed: () {},
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
