import 'package:flutter/material.dart';

class CustomMenuItem extends StatelessWidget {
  const CustomMenuItem({
    super.key,
    required this.title,
    this.leading,
    this.trailing, 
    this.onTap,
  });

  final Widget? trailing;
  final String title;
  final Widget? leading;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
      fontSize: 25,
    );
    Widget itemTitle = Text(
      title,
      style: textStyle,
    );

    return Card(
      child: ListTile(
        trailing: trailing,
        leading: leading,
        title: itemTitle,
        onTap: onTap,
      ),
    );
  }
}
