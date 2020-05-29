import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter3dflipmenu/screens/home.dart';
import 'package:flutter3dflipmenu/screens/menu.dart';
import 'package:flutter3dflipmenu/utils/config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: MyHomePage(),
        );
      });
    });
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _bodyAnimation, _menuAnimation, _iconAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 400),
      vsync: this,
    );
    _bodyAnimation =
        Tween<double>(begin: 0, end: pi / 2).animate(_controller);
    _menuAnimation = Tween<double>(begin: pi / 2, end: 0).animate(_controller);
    _iconAnimation = Tween<double>(
            begin: SizeConfig.widthMultiplier * 4,
            end: SizeConfig.widthMultiplier * 80)
        .animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int i = 0;
    _flipMenu() {
      if (i == 0) {
        _controller.forward();
        i = 1;
      } else {
        _controller.reverse();
        i = 0;
      }
    }

    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Stack(
            children: <Widget>[
              AnimatedBuilder(
                animation: _bodyAnimation,
                builder: (BuildContext context, Widget child) {
                  return Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.004)
                      ..rotateY(-_bodyAnimation.value),
                    alignment: Alignment(0.3, 0),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: HomeXD(),
                    ),
                  );
                },
              ),
              AnimatedBuilder(
                animation: _menuAnimation,
                builder: (BuildContext context, Widget child) {
                  return Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0)
                      ..rotateY(_menuAnimation.value),
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width / 1.5,
                      color: Colors.grey[100],
                      child: MenuXD(),
                    ),
                  );
                },
              ),
              AnimatedBuilder(
                animation: _iconAnimation,
                builder: (BuildContext context, Widget child) {
                  return Positioned(
                      top: SizeConfig.heightMultiplier * 6,
                      left: _iconAnimation.value,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: (){
                              _flipMenu();
                            },
                            icon: AnimatedIcon(
                              icon: AnimatedIcons.menu_close,
                              progress: _controller,
                              size: SizeConfig.heightMultiplier * 3,
                              color: Colors.black,
                            ),

                          ),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 20,
                          ),
                          Text(
                            'PRODUCT DETAIL',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: SizeConfig.textMultiplier * 2,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.2,
                              color: Colors.grey[800]
                            ),
                          )
                        ],
                      ));
                },
              ),
            ],
          ),
        ));
  }
}
