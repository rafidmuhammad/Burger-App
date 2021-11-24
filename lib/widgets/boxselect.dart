import 'package:flutter/material.dart';

class BoxSelect extends StatefulWidget {
  final String imageurl;
  BoxSelect({required this.imageurl});

  @override
  _BoxSelectState createState() => _BoxSelectState();
}

class _BoxSelectState extends State<BoxSelect> {
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.only(left: 24, right: 24, top: 15, bottom: 15),
        child: Image.asset(
          widget.imageurl,
        ),
        width: 110,
        height: 80,
        decoration: BoxDecoration(
            color: isSelect ? Color(0xff023E4A) : Color(0xffffffff),
            border: Border.all(color: Color(0xff023E4A)),
            borderRadius: BorderRadius.circular(6)),
      ),
      onTap: () {
        setState(() {
          isSelect = !isSelect;
        });
      },
    );
  }
}
