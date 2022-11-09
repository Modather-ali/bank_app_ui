import '../../packages.dart';

class TransferTypeCard extends StatefulWidget {
  final String cardName;
  final IconData iconData;
  final bool isSelected;
  const TransferTypeCard({
    Key? key,
    required this.cardName,
    required this.iconData,
    required this.isSelected,
  }) : super(key: key);

  @override
  _TransferTypeCardState createState() => _TransferTypeCardState();
}

class _TransferTypeCardState extends State<TransferTypeCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 55,
            width: 55,
            margin: const EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: widget.isSelected
                  ? Colors.grey.shade300.withOpacity(0.3)
                  : Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(
              widget.iconData,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          widget.cardName,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
