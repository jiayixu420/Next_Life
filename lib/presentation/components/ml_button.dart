import 'dart:async';

import 'package:flutter/material.dart';

class MlButton extends StatelessWidget {
  const MlButton({
    this.icon,
    this.text = '',
    this.onPressed,
    this.size = 42,
    this.backgroundColor = Colors.red,
    this.foregroundColor = Colors.white,
    this.borderColor = const Color(0xFF7EBEB2),
    this.borderRadius = 10,
    this.borderWidth = 2,
    this.elevation = 0,
    this.padding,
    super.key,
  });

  /// The icon to display within the button.
  final IconData? icon;

  /// The text to display within the button.
  final String text;

  /// The size of the button. By default, this is 42.0 height.
  final double size;

  /// The action to execute and wait for. While enabled,
  final FutureOr<void> Function()? onPressed;

  /// Color of the shape around the button.
  final Color backgroundColor;

  /// Color of the shape around the button.
  final Color? foregroundColor;

  /// Color of the border around the button.
  final Color borderColor;

  /// border radius of the button.
  final double borderRadius;

  /// border width of the button.
  final double borderWidth;

  /// elevation the button.
  final double? elevation;

  /// Allows overriding of the standard size of the [IconButton] padding.
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding:
            padding ?? const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        minimumSize: Size.fromHeight(size),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: borderWidth, color: borderColor),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        elevation: elevation,
      ),
      child: Text(text),
    );
  }
}
