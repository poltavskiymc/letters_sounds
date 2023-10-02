import 'package:flutter/material.dart';

class CardWithText extends StatelessWidget {
  final String text;
  final Function() onTap;

  const CardWithText({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 30,
          maxHeight: 50,
          minWidth: 30,
          maxWidth: 50,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Center(
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
