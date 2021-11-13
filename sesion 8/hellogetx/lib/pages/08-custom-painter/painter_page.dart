import 'package:flutter/material.dart';

class PainterPage extends StatelessWidget {
  const PainterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: CustomPaint(
          painter: _HeaderPico(),
        ),
      ),
    );
  }
}

class _HeaderDiagonal extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pencil = Paint();
    pencil.color = Colors.purple;
    pencil.style = PaintingStyle.fill;
    pencil.strokeWidth = 20.0;

    final path = Path();

    path.lineTo(0, size.height * .35);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    // path.lineTo(0, 0);

    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _HeaderPico extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pencil = Paint();
    pencil.color = Colors.purple;
    pencil.style = PaintingStyle.fill;
    pencil.strokeWidth = 20.0;

    final path = Path();

    path.lineTo(0, size.height * .25);
    path.lineTo(size.width / 2, size.height * 0.3);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    // path.lineTo(0, 0);

    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
