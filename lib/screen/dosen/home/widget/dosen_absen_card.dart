import 'package:flutter/material.dart';

class DosenAbsenCard extends StatelessWidget {
  const DosenAbsenCard({
    super.key,
    required this.title,
    required this.time,
    required this.clas,
    required this.icon,
    required this.onPressed,
  });

  final String title;
  final String time;
  final String clas;
  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 88,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Color(0xFFD7E8F5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 12, top: 8, bottom: 8, right: 12),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                  Text(
                    clas,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF124076)
                    ),
                  )
                ],
              ),
              const Spacer(),
              Icon(icon, size: 40)
            ],
          ),
        ),
      ),
    );
  }
}
