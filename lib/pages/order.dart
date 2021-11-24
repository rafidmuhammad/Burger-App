import 'package:burger_app/widgets/boxselect.dart';
import 'package:burger_app/widgets/drink.dart';
import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7C319),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_sharp),
                iconSize: 30,
              ),
              Center(
                child: Image.asset(
                  'assets/images/burger.png',
                  width: 257.41,
                  height: 183.78,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
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
              SizedBox(
                height: 11,
              ),
              Center(
                child: Text(
                  "Double Patty with Double American Cheddar\nCheese And Our Signature Secret Sauce",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff687A79)),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'EXTRA',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BoxSelect(imageurl: 'assets/images/cheese.png'),
                  BoxSelect(imageurl: 'assets/images/onion.png'),
                  BoxSelect(imageurl: 'assets/images/patty.png'),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'DRINKS',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 400,
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
                      SizedBox(
                        width: 9,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                      SizedBox(
                        width: 117,
                      ),
                      Drink(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 42,
              ),
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    child: Icon(
                      Icons.shopping_bag,
                      color: Color(0xff023E4A),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff023E4A), width: 2),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.only(
                            left: 24, right: 24, top: 17, bottom: 17),
                        child: Row(
                          children: [
                            Text(
                              'ADD TO BAG',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              '|',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '\$ 5.99',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff023E4A))),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
