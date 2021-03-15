import 'package:flutter/material.dart';

import './constants/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _loading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 80.0,
              ),
              Text(
                'TeachableMachine.com CNN',
                style: kTitleTextStyle,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Dog and Cat Predictor',
                style: kAppNameTextStyle,
              ),
              SizedBox(
                height: 40.0,
              ),
              Center(
                child: _loading
                    ? Container(
                        width: 280,
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/cat.png'),
                            SizedBox(
                              height: 50.0,
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    _buildGestureDetector(context, 'Take a Photo'),
                    SizedBox(height: 20.0),
                    _buildGestureDetector(context, 'Camera Roll')
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

Widget _buildGestureDetector(BuildContext context, String actionType) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      width: MediaQuery.of(context).size.width - 150,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 17),
      decoration: BoxDecoration(
        color: Color(0xFFE99600),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Text(actionType),
    ),
  );
}
