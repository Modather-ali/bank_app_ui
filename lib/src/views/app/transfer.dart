import 'package:bankee/packages.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 165,
            title: const Text('Transfer'),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
            ),
            flexibleSpace: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TransferTypeCard(
                      cardName: 'Mobile',
                      iconData: Icons.person,
                      isSelected: true,
                    ),
                    TransferTypeCard(
                      cardName: 'Bank',
                      iconData: Icons.cable,
                      isSelected: false,
                    ),
                    TransferTypeCard(
                      cardName: 'Online',
                      iconData: Icons.wifi_rounded,
                      isSelected: false,
                    ),
                    TransferTypeCard(
                      cardName: 'QR code',
                      iconData: Icons.qr_code,
                      isSelected: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: Get.height,
            )
          ]))
        ],
      ),
    );
  }
}
