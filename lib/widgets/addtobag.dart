import 'package:flutter/material.dart';

class AddToBag extends StatefulWidget {
  const AddToBag({super.key});

  @override
  State<AddToBag> createState() => _AddToBagState();
}

class _AddToBagState extends State<AddToBag> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isAdded = !isAdded;
        });
      },
      child: Container(
          padding:
              const EdgeInsets.only(left: 24, right: 24, top: 17, bottom: 17),
          child: Row(
            children: [
              const Icon(
                Icons.shopping_bag,
                color: Color(0xffffffff),
              ),
              const SizedBox(
                width: 80,
              ),
              Text(
                isAdded ? 'ADDED' : 'ADD TO BAG',
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.white),
              ),
            ],
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff023E4A))),
    );
  }
}
