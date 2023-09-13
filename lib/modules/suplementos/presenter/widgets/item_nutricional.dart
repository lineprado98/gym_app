import 'package:flutter/material.dart';

class ItemNutricional extends StatelessWidget {
  final String tipo;
  final String porcao;
  final double progress;

  const ItemNutricional(
      {super.key,
      required this.porcao,
      required this.progress,
      required this.tipo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tipo,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Text(
              porcao,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(height: 6),
        LinearProgressIndicator(
          value: progress,
          minHeight: 8,
          borderRadius: BorderRadius.circular(20),
          color: Colors.green,
        )
      ],
    );
  }
}
