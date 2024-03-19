import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenWidth = MediaQuery.of(context).size;
    log("Screen Width: ${screenWidth.height}");
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: screenWidth.width,
              child: Image(
                image: AssetImage('assets/bg4.png'),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              width: screenWidth.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/bg1.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lattè",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      Row(
                        children: [
                          Text('4.5 ', style: TextStyle(color: Colors.white)),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Text('  (458)', style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Container(
                        width: screenWidth.width * 0.9,
                        child: Text(
                          "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Choice of Cup Filling",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("Full",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("1/2 Full",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("3/4 Full",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("1/4 Full",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("Choice of Milk",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  Container(
                    padding: screenWidth.width > 500
                        ? EdgeInsets.symmetric(horizontal: 20, vertical: 10)
                        : EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            toggleButtonWithText(true, "Skim Milk", context),
                            toggleButtonWithText(true, "Almond Milk", context),
                            toggleButtonWithText(true, "Soy Milk", context),
                            toggleButtonWithText(
                                true, "Lactose Free Milk", context),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            toggleButtonWithText(
                                false, "Full Cream Milk", context),
                            toggleButtonWithText(
                                false, "Full Cream Milk", context),
                            toggleButtonWithText(false, "Oat Milk", context),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 25, 22, 22),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            Text(
                              "High Priority",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            Icon(Icons.info, color: Colors.red, size: 20)
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(21, 120, 1, 1),
                                  Color.fromRGBO(86, 222, 40, 1)
                                ]),
                          ),
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget toggleButtonWithText(
      bool isToggled, String text, BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.1,
          child: Switch(
            value: isToggled,
            onChanged: (bool newValue) {},
            activeTrackColor: Colors.green,
          ),
        ),
        SizedBox(width: 10),
        Container(
          child: Text(
            text,
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
