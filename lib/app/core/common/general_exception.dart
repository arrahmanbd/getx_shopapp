import 'package:flutter/material.dart';
import 'package:zainik_task/app/core/constants/colors.dart';

class GeneralExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const GeneralExceptionWidget({Key? key, required this.onPress})
      : super(key: key);

  @override
  State<GeneralExceptionWidget> createState() => _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: height * .15,
          ),
          const Icon(
            Icons.cloud_off,
            color: ColorPalette.primary,
            size: 50,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(
                child: Text(
              'Error in Communication',
              textAlign: TextAlign.center,
            )),
          ),
          SizedBox(
            height: height * .15,
          ),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              height: 44,
              width: 160,
              decoration: BoxDecoration(
                  color: ColorPalette.primary,
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child: Text(
                'Refresh',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
              )),
            ),
          )
        ],
      ),
    );
  }
}
