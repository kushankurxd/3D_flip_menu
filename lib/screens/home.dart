import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter3dflipmenu/utils/config.dart';

class HomeXD extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeXDState();
  }
}

class _HomeXDState extends State<HomeXD> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: SizeConfig.heightMultiplier * 14,
        ),
        Stack(children: [
          Container(),
          Stack(
            children: <Widget>[
              Positioned(
                top: -SizeConfig.heightMultiplier * 0.4,
                right: SizeConfig.widthMultiplier * 20,
                child: Image.asset(
                  'img/guitar.png',
                  color: Colors.grey[700].withOpacity(0.8),
                  width: SizeConfig.imageSizeMultiplier * 64,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: ClipRect(
                    child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                        child: Image.asset(
                          'img/guitar.png',
                          width: SizeConfig.imageSizeMultiplier * 64,
                        ))),
              ),
            ],
          ),
          Positioned(
            right: SizeConfig.widthMultiplier * 55,
            top: SizeConfig.heightMultiplier * 28,
            child: Transform.rotate(
                angle: -pi / 2,
                child: Image.asset(
                  'img/logo.png',
                  width: SizeConfig.widthMultiplier * 52,
                )),
          ),
        ]),
        Padding(
          padding: EdgeInsets.only(
              top: SizeConfig.heightMultiplier * 10,
              left: SizeConfig.widthMultiplier * 8,
              right: SizeConfig.widthMultiplier * 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Fender',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: SizeConfig.textMultiplier * 3.4,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[800].withOpacity(0.6)),
                  ),
                  Text(
                    'American',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: SizeConfig.textMultiplier * 4.1,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[900],
                        height: 1.3),
                  ),
                  Text(
                    'Elite Strat',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: SizeConfig.textMultiplier * 3,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[900],
                        height: 1.3),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: SizeConfig.widthMultiplier),
                child: Row(
                  children: <Widget>[
                    Text(
                      'SPEC',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: SizeConfig.textMultiplier * 1.6,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[800]),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey[800],
                      size: SizeConfig.imageSizeMultiplier * 5,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
