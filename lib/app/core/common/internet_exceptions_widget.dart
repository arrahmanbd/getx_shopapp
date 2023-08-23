import 'package:flutter/material.dart';
import 'package:zainik_task/app/core/constants/colors.dart';

class InterNetExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const InterNetExceptionWidget({Key? key, required this.onPress})
      : super(key: key);

  @override
  State<InterNetExceptionWidget> createState() =>
      _InterNetExceptionWidgetState();
}

class _InterNetExceptionWidgetState extends State<InterNetExceptionWidget> {
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
              'We are unable to process your request.\nPlease try again',
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
                'Try Again',
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
