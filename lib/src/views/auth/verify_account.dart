import '../../../packages.dart';

class VerifyAccountScreen extends StatefulWidget {
  const VerifyAccountScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _VerifyAccountScreenState createState() => _VerifyAccountScreenState();
}

class _VerifyAccountScreenState extends State<VerifyAccountScreen> {
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
                "Verify Account!",
                style: titleStyle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 35,
              bottom: 60,
              left: 15,
              right: 15,
            ),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: const [
                Text(
                  'Enter 4-digit Code we have sent to at ',
                  textAlign: TextAlign.center,
                  style: normalStyle,
                ),
                Text(
                  '+0 000 000 000 ',
                  textAlign: TextAlign.center,
                  style: underLineStyle,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: PinFieldAutoFill(
              codeLength: 4,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Didn't not received the code?",
              textAlign: TextAlign.center,
              style: normalStyle,
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Text(
              'Resend Code',
              textAlign: TextAlign.center,
              style: underLineStyle,
            ),
          ),
          SizedBox(
            height: Get.height * 0.25,
          ),
          CustomButton(
            titleText: "Proceed",
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 35,
              bottom: 60,
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
