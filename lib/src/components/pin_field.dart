import '../../packages.dart';

enum PINFieldStatus {
  empty,
  filled,
  onEdit,
}

class PINField extends StatefulWidget {
  final PINFieldStatus pinFieldStatus;
  final int? fieldNumber;
  const PINField({Key? key, required this.pinFieldStatus, this.fieldNumber})
      : super(key: key);

  @override
  _PINFieldState createState() => _PINFieldState();
}

class _PINFieldState extends State<PINField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.only(top: 5),
      decoration: widget.pinFieldStatus == PINFieldStatus.onEdit
          ? BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(10),
            )
          : BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(-1, -1),
                    color: Colors.white,
                  ),
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(4, 4),
                    color: Color(0xFFA7A9AF),
                  )
                ]),
      child: _containerChild(),
    );
  }

  Widget _containerChild() {
    switch (widget.pinFieldStatus) {
      case PINFieldStatus.filled:
        return const Text(
          "*",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: grayColor,
          ),
        );
      case PINFieldStatus.onEdit:
        return Text(
          widget.fieldNumber.toString(),
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        );
      default:
        return const SizedBox();
    }
  }
}
