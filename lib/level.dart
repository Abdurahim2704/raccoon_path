import 'package:flutter/material.dart';

class Level extends StatelessWidget {
  final String name;
  final int currentPoint;
  final int maxPoint;
  final bool enabled;
  final String icon;
  const Level(
      {super.key,
      required this.enabled,
      required this.icon,
      required this.name,
      required this.currentPoint,
      required this.maxPoint});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: enabled
              ? const BorderSide(width: 1, color: Color(0xFF1256DA))
              : BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F1256DA),
            blurRadius: 12,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: ShapeDecoration(
              color: const Color(0x26D0DDF8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(64),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x7FD0DDF8),
                  blurRadius: 12,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: SizedBox(height: 150, child: Image.asset(icon)),
          ),
          const SizedBox(height: 8),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Color(0xFF1256DA),
                  fontSize: 16,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w800,
                  height: 0.09,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '${maxPoint <= currentPoint ? maxPoint : currentPoint}/$maxPoint ball',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF475569),
                  fontSize: 14,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                  height: 0.10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
