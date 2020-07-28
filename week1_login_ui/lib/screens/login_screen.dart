import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: deviceHeight,
          width: deviceWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.orange[900],
                Colors.orange[400],
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                height: deviceHeight * 0.3,
                padding: EdgeInsets.symmetric(
                  vertical: deviceHeight * 0.001,
                  horizontal: deviceHeight * 0.03,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: deviceHeight * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(
                  deviceHeight * 0.05,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                height: deviceHeight * 0.7,
                width: deviceWidth,
                child: Column(
                  children: [
                    SizedBox(
                      height: deviceHeight * 0.07,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).accentColor,
                              spreadRadius: 0.5,
                              blurRadius: 16,
                            ),
                          ]),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Email or Phone Number',
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: deviceHeight * 0.015,
                              ),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              focusColor: Colors.grey,
                            ),
                          ),
                          Divider(
                            height: 0,
                            thickness: deviceHeight * 0.001,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: deviceHeight * 0.015,
                              ),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              focusColor: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.05,
                    ),
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.05,
                    ),
                    FlatButton(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      minWidth: deviceWidth * 0.58,
                      height: deviceHeight * 0.06,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      color: Theme.of(context).accentColor,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: deviceHeight * 0.05,
                    ),
                    Text(
                      'Continue with social media',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FlatButton(
                          child: Text(
                            'Facebook',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          minWidth: deviceWidth * 0.32,
                          height: deviceHeight * 0.06,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: Colors.blue,
                          onPressed: () {},
                        ),
                        FlatButton(
                          child: Text(
                            'Github',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          minWidth: deviceWidth * 0.32,
                          height: deviceHeight * 0.06,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
