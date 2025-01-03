import 'package:flutter/material.dart';

// Widget pour afficher un triangle dans les bulles de dialogues
class TriangleWidget extends StatelessWidget {
  final Color color;

  const TriangleWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TrianglePainter(color: color),
      size: Size(20, 10), // Taille du triangle
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color color;

  TrianglePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;
    Path path = Path();

    // Décalage horizontal
    double offsetX = size.width * 4; // Décalage du triangle par rapport au centre de la bulle

    path.moveTo(offsetX, 0); // Coin haut gauche décalé
    path.lineTo(size.width / 2 + offsetX, size.height); // Pointe en bas (centre décalé)
    path.lineTo(size.width + offsetX, 0); // Coin haut droit décalé
    path.close(); // Ferme le triangle
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}