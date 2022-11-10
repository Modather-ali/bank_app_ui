import '../../packages.dart';

class ActivityCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function()? onTap;
  const ActivityCard({
    Key? key,
    required this.icon,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 120,
          margin: const EdgeInsets.fromLTRB(5, 15, 5, 30),
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
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              Text(title)
            ],
          ),
        ),
      ),
    );
  }
}
