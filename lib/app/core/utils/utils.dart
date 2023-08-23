import 'package:d_dialog/d_dialog.dart';
import 'package:flutter/material.dart';


class Utility {
  static blurDialog(
      BuildContext context, Widget widget) async {
    await DialogBackground(
        barrierColor: Colors.black.withOpacity(.5),
        blur: 3,
        dialog:widget ).show(
      context,
    );
  }
}
