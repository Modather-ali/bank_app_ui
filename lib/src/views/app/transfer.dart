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
            flexibleSpace: FlexibleSpaceBar(
              background: Align(
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
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Text(
                    'Recent',
                    style: boldStyle,
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  height: 195,
                  child: ListView.builder(
                    itemCount: contacts.length,
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 25),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ContactsCard(
                          contactName: contacts[index].name.split(' ')[0],
                          contactPhone: contacts[index].phone);
                    },
                  ),
                ),
                Container(
                  height: Get.height,
                  width: Get.width,
                  color: Colors.white,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'All contacts',
                        style: boldStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color(0xFF7165e3),
                                  width: 1,
                                  // style: BorderStyle.none,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              hintText: 'search name or number',
                              prefixIcon: const Icon(Icons.search)),
                        ),
                      ),
                      ListView.separated(
                        itemCount: contacts.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            title: Text(
                              contacts[index].name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            subtitle: Text(contacts[index].phone),
                            trailing: Visibility(
                              visible: !contacts[index].available,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: grayColor,
                                  elevation: 0,
                                ),
                                child: const Text('invite'),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const Divider(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
