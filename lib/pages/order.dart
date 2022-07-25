import 'package:burger_app/widgets/add_to_bag.dart';
import 'package:burger_app/widgets/box_select.dart';
import 'package:burger_app/widgets/drink.dart';
import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screeSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF7C319),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_sharp),
              iconSize: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/burger.png',
                      width: 257.41,
                      height: 183.78,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      'Double Cheese\nBurger',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff023E4A),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  const Center(
                    child: Text(
                      "Double Patty with Double American Cheddar Cheese And Our Signature Secret Sauce",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff687A79)),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Text(
                    'EXTRA',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 80,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        BoxSelect(imageUrl: 'assets/images/cheese.png'),
                        BoxSelect(imageUrl: 'assets/images/onion.png'),
                        BoxSelect(imageUrl: 'assets/images/patty.png'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'DRINKS',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: screeSize.width,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/coke.png',
                            height: 75,
                            width: 100,
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'COKE',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '\$ 2.99',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          const Expanded(flex: 1, child: Drink()),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                  const AddToBag(),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
