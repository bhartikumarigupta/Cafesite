import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:login/detailspage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg1.png'), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: size.height * 0.08,
                          left: 10,
                          right: 10,
                          bottom: 10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.5),
                            Color.fromRGBO(255, 255, 255, 0.14),
                            Color.fromRGBO(255, 255, 255, 0.38)
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  Image(
                                    image: AssetImage('assets/hand_shake.png'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '20/12/2022',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromRGBO(
                                                182, 182, 182, 1)),
                                      ),
                                      Text(
                                        'Joshua Scanlan',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color.fromRGBO(
                                                182, 182, 182, 1)),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(182, 182, 182, 1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.delete_outline_outlined,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage('assets/profile.png'),
                                    backgroundColor: Colors.transparent,
                                  )
                                ],
                              )
                            ],
                          ),
                          Container(
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              margin: const EdgeInsets.only(),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    fillColor: Colors.white,
                                    suffixIcon: Icon(
                                      Icons.filter_alt_outlined,
                                      color: Color.fromRGBO(182, 182, 182, 1),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Colors.grey,
                                    ),
                                    filled: true),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Most Popular Beverages",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsPage()));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage('assets/bg3.png'),
                                    fit: BoxFit.cover),
                              ),
                              height: size.height * 0.3,
                              width: size.width * 0.6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Image(
                                      image: AssetImage(
                                        'assets/c3.png',
                                      ),
                                      width: size.width * 0.3,
                                      height: size.height * 0.12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Hot Cappuccino',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Espresso, Steamed Milk'),
                                          Row(
                                            children: [
                                              Text('4.5'),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                              Text('  (458)')
                                            ],
                                          )
                                        ],
                                      ),
                                      Container(
                                        decoration:
                                            BoxDecoration(color: Colors.green),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/bg3.png'),
                                  fit: BoxFit.cover),
                            ),
                            height: size.height * 0.3,
                            width: size.width * 0.6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Image(
                                    image: AssetImage(
                                      'assets/c1.png',
                                    ),
                                    width: size.width * 0.3,
                                    height: size.height * 0.12,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Hot Cappuccino',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Espresso, Steamed Milk'),
                                        Row(
                                          children: [
                                            Text('4.5'),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            Text('  (458)')
                                          ],
                                        )
                                      ],
                                    ),
                                    Container(
                                      decoration:
                                          BoxDecoration(color: Colors.green),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/bg3.png'),
                                  fit: BoxFit.cover),
                            ),
                            height: size.height * 0.3,
                            width: size.width * 0.6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Image(
                                    image: AssetImage(
                                      'assets/c2.png',
                                    ),
                                    width: size.width * 0.3,
                                    height: size.height * 0.12,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Hot Cappuccino',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Espresso, Steamed Milk'),
                                        Row(
                                          children: [
                                            Text('4.5'),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            Text('  (458)')
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.green),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(228, 187, 187, 0.498),
                          Color.fromRGBO(226, 170, 170, 0.137),
                          Color.fromRGBO(219, 164, 164, 0.376)
                        ])),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        'Get it instantly',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(180, 180, 180, 0.33)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Lattè",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                              Row(
                                children: [
                                  Text('4.5'),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text('  (458)')
                                ],
                              ),
                              Container(
                                width: size.width * 0.5,
                                child: Text(
                                  "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          Stack(
                            children: [
                              Positioned(
                                child: Image(
                                  image: AssetImage('assets/c4.png'),
                                  width: size.width * 0.3,
                                  height: size.height * 0.2,
                                ),
                              ),
                              Positioned(
                                  bottom: 5,
                                  right: size.width > 400
                                      ? size.width * 0.13
                                      : size.width * 0.08,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text("Add"),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(180, 180, 180, 0.33)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Lattè",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                              Row(
                                children: [
                                  Text('4.5'),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text('  (458)')
                                ],
                              ),
                              Container(
                                width: size.width * 0.5,
                                child: Text(
                                  "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          Stack(
                            children: [
                              Positioned(
                                child: Image(
                                  image: AssetImage('assets/c4.png'),
                                  width: size.width * 0.3,
                                  height: size.height * 0.2,
                                ),
                              ),
                              Positioned(
                                  bottom: 5,
                                  right: size.width > 400
                                      ? size.width * 0.13
                                      : size.width * 0.08,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text("Add"),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(180, 180, 180, 0.33)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Lattè",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                              Row(
                                children: [
                                  Text('4.5'),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text('  (458)')
                                ],
                              ),
                              Container(
                                width: size.width * 0.5,
                                child: Text(
                                  "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          Stack(
                            children: [
                              Positioned(
                                child: Image(
                                  image: AssetImage('assets/c4.png'),
                                  width: size.width * 0.3,
                                  height: size.height * 0.2,
                                ),
                              ),
                              Positioned(
                                  bottom: 5,
                                  right: size.width > 400
                                      ? size.width * 0.13
                                      : size.width * 0.08,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text("Add"),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(180, 180, 180, 0.33)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Lattè",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                              Row(
                                children: [
                                  Text('4.5'),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text('  (458)')
                                ],
                              ),
                              Container(
                                width: size.width * 0.5,
                                child: Text(
                                  "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          Stack(
                            children: [
                              Positioned(
                                child: Image(
                                  image: AssetImage('assets/c4.png'),
                                  width: size.width * 0.3,
                                  height: size.height * 0.2,
                                ),
                              ),
                              Positioned(
                                  bottom: 5,
                                  right: size.width > 400
                                      ? size.width * 0.13
                                      : size.width * 0.08,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text("Add"),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
