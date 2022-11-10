import '../../../packages.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: Get.width,
                    height: Get.height * 0.25,
                    color: secondaryColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  "\$7,425",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Available balance",
                                  style: TextStyle(
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => const MyAccountScreen());
                              },
                              child: const Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 200,
                          width: Get.width,
                          margin: const EdgeInsets.symmetric(vertical: 30),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                  offset: const Offset(1, 1),
                                  color:
                                      const Color(0xFFA7A9AF).withOpacity(0.5),
                                )
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    _balanceDetails(
                                      number: '1,460',
                                      title: "Spent",
                                      color: Colors.red,
                                    ),
                                    _balanceDetails(
                                      number: '2,730',
                                      title: 'Earned',
                                      color: primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                thickness: 2,
                                height: 0,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'You spent \$2,732 on dining out this month Let\'s try to make it lower',
                                    ),
                                    Text(
                                      'Tell me more',
                                      style: underLineStyle,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const Text(
                          'Activity',
                          style: boldStyle,
                        ),
                        Row(
                          children: [
                            ActivityCard(
                              title: 'Transfer',
                              icon: Icons.send,
                              onTap: () {
                                Get.to(() => const TransferScreen());
                              },
                            ),
                            ActivityCard(
                              title: 'My Card',
                              icon: Icons.credit_card,
                              onTap: () {
                                Get.to(() => const CardDetailsScreen());
                              },
                            ),
                            const ActivityCard(
                              title: 'Insight',
                              icon: Icons.bar_chart,
                            ),
                          ],
                        ),
                        const Text(
                          'Complete Verification',
                          style: boldStyle,
                        ),
                        Container(
                          height: 400,
                          width: Get.width,
                          margin: const EdgeInsets.fromLTRB(0, 15, 0, 30),
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                  offset: const Offset(1, 1),
                                  color:
                                      const Color(0xFFA7A9AF).withOpacity(0.5),
                                )
                              ]),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    '75%',
                                    style: titleStyle,
                                  ),
                                  Text('7 of 10 completed'),
                                ],
                              ),
                              Slider(
                                value: 75,
                                min: 0,
                                max: 100,
                                onChanged: (value) {},
                              ),
                              const Divider(
                                thickness: 2,
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                minLeadingWidth: 0,
                                leading: const Icon(
                                  Icons.person,
                                  color: primaryColor,
                                  size: 30,
                                ),
                                title: const Text(
                                  'Personal Information',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'When you register for an account, we collect personal information',
                                      style: longTextStyle,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Continue',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Divider(
                                thickness: 2,
                                endIndent: 20,
                                indent: 20,
                              ),
                              const ListTile(
                                contentPadding: EdgeInsets.zero,
                                minLeadingWidth: 0,
                                leading: Icon(
                                  Icons.credit_card,
                                  color: primaryColor,
                                  size: 30,
                                ),
                                title: Text(
                                  'Verification',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Divider(
                                thickness: 2,
                                endIndent: 20,
                                indent: 20,
                              ),
                              const ListTile(
                                contentPadding: EdgeInsets.zero,
                                minLeadingWidth: 0,
                                leading: Icon(
                                  Icons.email,
                                  color: primaryColor,
                                  size: 30,
                                ),
                                title: Text(
                                  'Confirm email',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  _balanceDetails(
      {required String number, required String title, required Color color}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: subtitleStyle,
        ),
        Row(
          children: [
            Container(
              height: 10,
              width: 10,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
            ),
            Text(
              "\$$number",
              style: titleStyle,
            ),
          ],
        ),
      ],
    );
  }
}
