import 'package:flutter/material.dart';

class SecondButton extends StatelessWidget {
  const SecondButton({
    super.key,
    required this.title,
    required this.onClick
  });

  final String title;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: OutlinedButton(
        onPressed: onClick,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          side: const BorderSide(
            color: Color(0xFF124076),
            width: 1.5
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
