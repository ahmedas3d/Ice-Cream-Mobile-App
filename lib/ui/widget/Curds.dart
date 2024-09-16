import 'package:flutter/material.dart';

class CurdsDetails extends StatefulWidget {
  const CurdsDetails(
      {super.key,
      required this.num,
      required this.detail,
      required this.imagePath});
  final String num;
  final String detail;
  final String imagePath;

  @override
  State<CurdsDetails> createState() => _CurdsDetailsState();
}

class _CurdsDetailsState extends State<CurdsDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      width: 130,
      decoration: BoxDecoration(
        color: Color(0xff8A19D6),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(widget.imagePath),
          Text(
            widget.num,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          Text(
            widget.detail,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
