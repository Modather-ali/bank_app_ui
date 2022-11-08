import '../../../packages.dart';

class TouchIdConfirmationScreen extends StatefulWidget {
  const TouchIdConfirmationScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TouchIdConfirmationScreenState createState() =>
      _TouchIdConfirmationScreenState();
}

class _TouchIdConfirmationScreenState extends State<TouchIdConfirmationScreen> {
  double _containerOneSize = 80;
  double _containerTwoSize = 80;
  @override
  void initState() {
    Timer.periodic(const Duration(milliseconds: 500), (timer) {
      _containerOneSize = Get.height * 0.225;
      _containerTwoSize = Get.height * 0.35;
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // if (_containerOneSize < Get.height * 0.4) {
    //   setState(() {
    //     _containerOneSize = Get.height * 0.4;
    //   });
    // } else {
    //   setState(() {
    //     _containerOneSize = 80;
    //   });
    // }
    return Scaffold(
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            // color: grayColor,
            height: Get.height * 0.45,
            width: Get.width,
            child: AnimatedContainer(
              alignment: Alignment.center,
              duration: const Duration(milliseconds: 500),
              height: _containerTwoSize,
              width: _containerTwoSize,
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor.withOpacity(0.5)),
                shape: BoxShape.circle,
              ),
              child: AnimatedContainer(
                alignment: Alignment.center,
                duration: const Duration(milliseconds: 500),
                height: _containerOneSize,
                width: _containerOneSize,
                decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  shape: BoxShape.circle,
                ),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          primaryColor.withOpacity(0.4),
                          primaryColor,
                        ],
                      ),
                    ),
                    child: const Icon(
                      Icons.fingerprint,
                      color: Colors.white,
                      size: 70,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Center(
            child: Text(
              "Use Touch ID to authorize payments",
              textAlign: TextAlign.center,
              style: titleStyle,
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
              "Activate touch ID so you Don't need to confirm your PIN every time you want to send money",
              textAlign: TextAlign.center,
              style: normalStyle,
            ),
          ),
          CustomButton(
            titleText: "Activate Now",
            onPressed: () {
              Get.offAll(() => const MainScreen());
            },
          ),
          CustomButton(
            titleText: "Skip This",
            color: grayColor,
            onPressed: () {
              Get.to(() => const SetPinScreen());
            },
          ),
        ],
      ),
    );
  }
}
