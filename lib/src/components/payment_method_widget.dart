import 'package:flutter/cupertino.dart';

import '../../packages.dart';

class PaymentMethod extends StatefulWidget {
  final String methodTitle;
  final String methodName;
  final String availableBalance;
  final String subtitle;
  bool switchValue;
  PaymentMethod(
      {Key? key,
      required this.methodTitle,
      required this.methodName,
      required this.availableBalance,
      required this.subtitle,
      required this.switchValue})
      : super(key: key);

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.methodTitle,
            style: boldStyle,
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(10),
            width: Get.width,
            height: 180,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: const Offset(1, 1),
                    color: const Color(0xFFA7A9AF).withOpacity(0.5),
                  )
                ]),
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  title: Text(widget.methodName),
                  subtitle: Text(widget.subtitle),
                  trailing: InkWell(
                    onTap: () {},
                    child: const Icon(Icons.more_horiz),
                  ),
                ),
                const Divider(),
                ListTile(
                  title: const Text(
                    'Available balance',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  subtitle: Text(
                    '\$${widget.availableBalance}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  trailing: CupertinoSwitch(
                    activeColor: primaryColor,
                    value: widget.switchValue,
                    onChanged: (value) {
                      setState(() {
                        widget.switchValue = value;
                      });
                    },
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
