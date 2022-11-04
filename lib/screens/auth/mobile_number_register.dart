import '../../packages.dart';

class MobileNumberRegisterScreen extends StatefulWidget {
  const MobileNumberRegisterScreen({Key? key}) : super(key: key);

  @override
  _MobileNumberRegisterScreenState createState() =>
      _MobileNumberRegisterScreenState();
}

class _MobileNumberRegisterScreenState
    extends State<MobileNumberRegisterScreen> {
  final bool _checkboxValue = false;
  final bool _showPasswrd = false;
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
                "Mobile Number",
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
              left: 15,
              right: 15,
            ),
            child: Text(
              "Please enter your valid phone number. We will send you 4-digit code to verify account",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Color.fromRGBO(28, 25, 57, 0.8),
              ),
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(-4, -4),
                    color: Colors.white,
                  ),
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(4, 4),
                    color: Color(0xFFA7A9AF),
                  )
                ]),
            child: TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          CustomButton(
            titleText: "Send Code",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
