import 'package:flutter/material.dart';

class BoxSelect extends StatefulWidget {
  final String imageUrl;
  const BoxSelect({super.key, required this.imageUrl});

  @override
  _BoxSelectState createState() => _BoxSelectState();
}

class _BoxSelectState extends State<BoxSelect> {
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding:
            const EdgeInsets.only(left: 24, right: 24, top: 15, bottom: 15),
        child: Image.asset(
          widget.imageUrl,
        ),
        width: 110,
        height: 80,
        decoration: BoxDecoration(
            color: isSelect ? const Color(0xff023E4A) : const Color(0xffffffff),
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
