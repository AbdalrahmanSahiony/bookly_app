import 'package:flutter/material.dart';

class CostumButton extends StatelessWidget {
  final Color backgroungColor;
  final Widget text;
  final VoidCallback onPressed;
  final BorderRadius borderRadius;

  const CostumButton({
    super.key,
    required this.backgroungColor,
    required this.text,
    required this.onPressed,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: SizeConfig.defaultSize! * 4.8,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroungColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: text,
      ),
    );
  }
}
