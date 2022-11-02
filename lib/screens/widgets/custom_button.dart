import '../../packages.dart';

class CustomButton extends StatelessWidget {
  final String titleText;
  final Color? color;
  const CustomButton({Key? key, required this.titleText, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 17,
          ),
          backgroundColor: color,
          //  shape: BorderRadius.circular(10)
        ),
        onPressed: () {},
        child: Text(titleText),
      ),
    );
  }
}
