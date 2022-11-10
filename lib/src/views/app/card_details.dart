import 'package:flutter/cupertino.dart';

import '../../../packages.dart';

class CardDetailsScreen extends StatefulWidget {
  const CardDetailsScreen({Key? key}) : super(key: key);

  @override
  _CardDetailsScreenState createState() => _CardDetailsScreenState();
}

class _CardDetailsScreenState extends State<CardDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            // expandedHeight: 165,
            title: Text('Your Platinum Card'),
            centerTitle: true,
          ),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: const [
                          ActivityCard(
                            title: 'Lock Card',
                            icon: Icons.lock,
                          ),
                          ActivityCard(
                            title: 'Change PIN',
                            icon: Icons.security,
                          ),
                          ActivityCard(
                            title: 'Top Up',
                            icon: Icons.topic,
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Settings',
                      style: boldStyle,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      title: const Text(
                        'Set card limit',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: const Text('You set budget for 3 categories'),
                      trailing: CupertinoSwitch(
                        activeColor: primaryColor,
                        value: true,
                        onChanged: (value) {},
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      title: const Text(
                        'Set card limit',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: const Text('You set budget for 3 categories'),
                      trailing: CupertinoSwitch(
                        activeColor: primaryColor,
                        value: false,
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
