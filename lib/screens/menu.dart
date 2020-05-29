import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter3dflipmenu/utils/config.dart';

class MenuXD extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuXDState();
  }
}

class _MenuXDState extends State<MenuXD> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: SizeConfig.heightMultiplier * 7,
          ),
          Image.asset(
            'img/logo.png',
            width: SizeConfig.imageSizeMultiplier * 26,
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'GUITARS',
                  style: TextStyle(
                      fontFamily: 'Poppinns',
                      fontSize: SizeConfig.textMultiplier * 3.6,
                      fontWeight: FontWeight.w700,
                      color: Colors.red[900]),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1.6,
                ),
                Text(
                  'BASSES',
                  style: TextStyle(
                    fontFamily: 'Poppinns',
                    fontSize: SizeConfig.textMultiplier * 3.6,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1.6,
                ),
                Text(
                  'AMPS',
                  style: TextStyle(
                      fontFamily: 'Poppinns',
                      fontSize: SizeConfig.textMultiplier * 3.6,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1.6,
                ),
                Text(
                  'PEDALS',
                  style: TextStyle(
                      fontFamily: 'Poppinns',
                      fontSize: SizeConfig.textMultiplier * 3.6,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1.6,
                ),
                Text(
                  'OTHERS',
                  style: TextStyle(
                      fontFamily: 'Poppinns',
                      fontSize: SizeConfig.textMultiplier * 3.5,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 26,
          ),
          Text(
            'ABOUT',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: SizeConfig.textMultiplier * 1.8,
                fontWeight: FontWeight.w700,
                color: Colors.grey[700],
            letterSpacing: 0.2),
          ),
          SizedBox(height: SizeConfig.heightMultiplier,),
          Text(
            'SUPPORT',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: SizeConfig.textMultiplier * 1.8,
                fontWeight: FontWeight.w700,
                color: Colors.grey[700],
                letterSpacing: 0.2),
          ),
          SizedBox(height: SizeConfig.heightMultiplier,),
          Text(
            'TERMS',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: SizeConfig.textMultiplier * 1.8,
                fontWeight: FontWeight.w700,
                color: Colors.grey[700],
                letterSpacing: 0.2),
          ),
          SizedBox(height: SizeConfig.heightMultiplier,),
          Text(
            'FAQS',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: SizeConfig.textMultiplier * 1.7,
                fontWeight: FontWeight.w700,
                color: Colors.grey[700],
                letterSpacing: 0.2),
          )
        ],
      ),
    );
  }
}
