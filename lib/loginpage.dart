import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login/bottomNavigation.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Color.fromRGBO(207, 123, 75, 0.51),
                  ],
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: size.height * 0.05),
                width: size.width * 0.9,
                height: size.height * 0.9,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/coffe.png',
                      width: size.width * 0.4,
                      height: size.height * 0.1,
                    ),
                    Text(
                      'Swift ',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 70,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        height: 1.175,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Café ',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 50,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        height: 1.175,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Latte but never late',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(171, 171, 171, 1),
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      width: size.width * 0.7,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusColor: Colors.white,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          filled: true,
                          fillColor: Colors.transparent,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: size.width * 0.7,
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusColor: Colors.white,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          filled: true,
                          fillColor: Colors.transparent,
                        ),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(77, 43, 26, 1),
                                Color.fromRGBO(167, 116, 90, 1)
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                offset: Offset(0, 4),
                                blurRadius: 4,
                              ),
                            ]),
                        width: size.width * 0.7,
                        height: size.height * 0.07,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return BottomNavigation();
                                },
                              ),
                            );
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              height: 1.1875,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return BottomNavigation();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: size.width * 0.7,
                        height: size.height * 0.07,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text('Signup',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              height: 1.1875,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        height: 1.1875,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
