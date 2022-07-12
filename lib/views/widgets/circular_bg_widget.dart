import 'package:flutter/material.dart';


class CircularBackground extends StatelessWidget {
  const CircularBackground({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Positioned(
          right: -(size.width * 1.1),
          top: -(size.width * 0.4) ,
          child: Container(
            width: size.height * 0.8 ,
            height: size.height * 0.8,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(239 ,239 ,239 , 1.00),
              borderRadius: BorderRadius.circular(2000.0),
              ),
            ),
        ),
      ],
    );
  }
}