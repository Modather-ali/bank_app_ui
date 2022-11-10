import '../../../packages.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          'My Account',
          style: Theme.of(context)
              .appBarTheme
              .titleTextStyle!
              .copyWith(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: const ListTile(
              title: Text(
                'Link new account',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: primaryColor),
              ),
              leading: Icon(
                Icons.person_add,
                color: primaryColor,
              ),
            ),
          ),
          PaymentMethod(
            methodTitle: 'Bank Account',
            methodName: 'BankWest',
            availableBalance: '295,90',
            subtitle: 'Checking 11065',
            switchValue: true,
          ),
          PaymentMethod(
            methodTitle: 'Card',
            methodName: 'Master Card',
            availableBalance: '273,58',
            subtitle: 'Card 4357***',
            switchValue: true,
          ),
          PaymentMethod(
            methodTitle: 'Online Payment',
            methodName: 'PayPal',
            availableBalance: '351,42',
            subtitle: 'Checking 11065',
            switchValue: true,
          ),
        ],
      ),
    );
  }
}
