import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/widgets/empty_screen.dart';
import '../controllers/inbox_controller.dart';

class InboxView extends GetView<InboxController> {
  const InboxView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Empty(image: 'empty', title: 'No message yet,', subTitle: "Send your first message, You'll find your\nconversation all right here.", action: (){}, ButtonText: 'Explore Users',)
      );
  }
}
