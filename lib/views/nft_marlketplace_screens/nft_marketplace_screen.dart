import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itec_task_one/widgets/text_widget.dart';

class NFTMarketPlaceScreen extends StatefulWidget {
  const NFTMarketPlaceScreen({Key? key}) : super(key: key);

  @override
  State<NFTMarketPlaceScreen> createState() => _NFTMarketPlaceScreenState();
}

class _NFTMarketPlaceScreenState extends State<NFTMarketPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipPath(
        clipper: TrapezoidClipper(),
        child: Container(
          color: Colors.blue,
          height: 200,
        ),
      ),
    );
  }
}

class TrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width * 0.75, 0); // Top width is 100
    path.lineTo(size.width * 0.75, 0); // Top width is 100
    path.lineTo(size.width, size.height); // Bottom width is 50
    path.lineTo(0, size.height); // Bottom width is 50
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
