import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultScreen extends StatelessWidget {
  final Color? backgroundColor;
  final Size sizeAppbar;
  final Widget? titleWidget;
  final Widget? bottomNavigationBar;
  final Widget? body;
  final List<Widget>? actions;
  const DefaultScreen(
      {super.key,
      this.backgroundColor,
      required this.sizeAppbar,
      this.titleWidget,
      this.actions,
      this.bottomNavigationBar,
      this.body});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: sizeAppbar,
        child: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
          title: titleWidget,
          actions: actions,
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
      body: body,
    );
  }
}
