import '../../../packages.dart';

class SetPinScreen extends StatefulWidget {
  const SetPinScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SetPinScreenState createState() => _SetPinScreenState();
}

class _SetPinScreenState extends State<SetPinScreen> {
  final List<int> _numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  final List<Map> _pinFieldData = [
    {
      "value": null,
      "status": PINFieldStatus.empty,
    },
    {
      "value": null,
      "status": PINFieldStatus.empty,
    },
    {
      "value": null,
      "status": PINFieldStatus.empty,
    },
    {
      "value": null,
      "status": PINFieldStatus.empty,
    },
  ];

  _changePINFieldStatus(int number) {
    for (var element in _pinFieldData) {
      if (element['value'] == null) {
        element['value'] = number;
        element['status'] = PINFieldStatus.onEdit;
        setState(() {});
        break;
      } else {
        element['status'] = PINFieldStatus.filled;
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              "Set your PIN",
              textAlign: TextAlign.center,
              style: titleStyle,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 15,
              bottom: 60,
            ),
            child: Text(
              'You will use this to Login next time',
              textAlign: TextAlign.center,
              style: normalStyle,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _pinFieldData.length,
              (index) {
                return PINField(
                  pinFieldStatus: _pinFieldData[index]["status"],
                  fieldNumber: _pinFieldData[index]["value"],
                );
              },
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 0,
              mainAxisExtent: 100,
            ),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _numbers.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  _changePINFieldStatus(index + 1);
                },
                child: Center(
                  child: Text(
                    _numbers[index].toString(),
                    style: titleStyle,
                  ),
                ),
              );
            },
          ),
          const SizedBox(
            height: 7,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                _changePINFieldStatus(0);
              },
              child: const Text(
                '0',
                style: titleStyle,
              ),
            ),
          ),
          // SizedBox(
          //   height: Get.height * 0.10,
          // ),
          const Spacer(),
          CustomButton(
            titleText: "Save PIN",
            onPressed: () {
              print(_pinFieldData);
            },
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
