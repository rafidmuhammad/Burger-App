import 'package:burger_app/pages/order.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      final double height = MediaQuery.of(context).size.height;
      return SafeArea(
          child: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/start.png',
            height: height,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 48, bottom: 37),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: const [
                      Text(
                        "Burger App",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff023E4A)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "A Burger To Die For",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff687A79)),
                      ),
                    ],
                  ),
                  ConstrainedBox(
                    constraints:
                        const BoxConstraints.tightFor(width: 260, height: 55),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Order();
                        }));
                      },
                      child: const Text(
                        "ORDER NOW",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff023E4A),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100))),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ));
    }));
  }
}
