import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/widgets.dart';

void showFlushbar(String title, String message, Icon? icon, BuildContext context) {
      Flushbar(
                  title: title,
                  message:message,
                  icon: icon,
                  duration: Duration(seconds: 3),
                ).show(context);
}