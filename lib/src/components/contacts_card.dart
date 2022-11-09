import '../../packages.dart';

class ContactsCard extends StatelessWidget {
  final String contactName;
  final String contactPhone;
  // final String contact;
  const ContactsCard({
    Key? key,
    required this.contactName,
    required this.contactPhone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 150,
        margin: const EdgeInsets.fromLTRB(5, 15, 5, 30),
        padding: const EdgeInsets.fromLTRB(25, 7, 25, 7),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Text(
              contactName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              contactPhone,
              style: subtitleStyle,
            ),
          ],
        ),
      ),
    );
  }
}
