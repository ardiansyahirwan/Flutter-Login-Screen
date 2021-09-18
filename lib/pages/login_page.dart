import 'package:flutter/material.dart';
import 'package:flutter_1/theme.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: grey,
        body: SafeArea(
            child: Stack(
          children: [
            Positioned(
              right: -smallCircle(context) / 3,
              top: -smallCircle(context) / 3,
              child: Container(
                width: smallCircle(context),
                height: smallCircle(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [purple, pink],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
            ),
            Positioned(
              left: -bigCircle(context) / 4,
              top: -bigCircle(context) / 4,
              child: Container(
                child: Center(
                  child: Text(
                    'dribbble',
                    style: loginTitle,
                  ),
                ),
                width: bigCircle(context),
                height: bigCircle(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [purple, pinkForBigCircle],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20,
                        MediaQuery.of(context).size.height * 1 / 2.2, 20, 10),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Column(
                      children: [
                        TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: pinkForBigCircle,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: pinkForBigCircle)),
                                labelText: 'Email',
                                labelStyle:
                                    TextStyle(color: pinkForBigCircle))),
                        TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: pinkForBigCircle,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: pinkForBigCircle)),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: pinkForBigCircle)),
                          obscureText: true,
                        )
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment(0.88, 1),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: pinkForBigCircle),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(
                        20,
                        25,
                        20,
                        0,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 5 / 10,
                            height: 50,
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [purple, pinkForBigCircle],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter),
                                  color: pinkForBigCircle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Material(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  splashColor: Colors.amber,
                                  onTap: () {},
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'SIGN UP',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 5,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/images/facebook.png'),
                            iconSize: 50.0,
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/images/twitter.png'),
                            iconSize: 50.0,
                          ),
                          Spacer(
                            flex: 5,
                          ),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 70,
                      ),
                      Text('Dont have an account ?'),
                      Text(
                        ' Sign Up',
                        style: TextStyle(color: pinkForBigCircle),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )));
  }
}
