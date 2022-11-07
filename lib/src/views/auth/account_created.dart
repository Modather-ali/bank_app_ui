import '../../../packages.dart';

class AccountCreatedScreen extends StatefulWidget {
  const AccountCreatedScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AccountCreatedScreenState createState() => _AccountCreatedScreenState();
}

class _AccountCreatedScreenState extends State<AccountCreatedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            doneImage,
            height: Get.height * 0.27,
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: Get.height / 10,
              ),
              child: const Text(
                "Account Created!",
                style: titleStyle,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Dear user your account has been created successfully, Continue to start using app",
              textAlign: TextAlign.center,
              style: normalStyle,
            ),
          ),
          SizedBox(
            height: Get.height * 0.20,
          ),
          CustomButton(
            titleText: "Continue",
            onPressed: () {
              Get.off(() => const TouchIdConfirmationScreen());
            },
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 35,
              left: 5,
              right: 5,
            ),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: const [
                Text(
                  'by clicking Proceed you agree to our ',
                  style: normalStyle,
                ),
                InkWell(
                  child: Text(
                    'Privacy Policy ',
                    style: underLineStyle,
                  ),
                ),
                Text(
                  'and ',
                  style: normalStyle,
                ),
                InkWell(
                  child: Text(
                    'Terms and Conditions',
                    style: underLineStyle,
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
