import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:beats_ux/core/global/styles/styles.dart';

import 'package:beats_ux/views/widgets/widgets.dart';


class HomeBeatsPage extends StatelessWidget {
  const HomeBeatsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CircularBackground(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CustomAppBarBeats(),
                  SizedBox(height: 20),
                  _HeaderWidget(),
                  SizedBox(height: 30),
                  CardsView(),
                ]
              ),
            )
          ),
          const _BuyButtonWidget()
        ]
      ),
    );
  }
}


class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Beats', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
          Text('By Dre', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0))
        ],
      ),
    );
  }
}

class _BuyButtonWidget extends StatelessWidget {
  const _BuyButtonWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            width: context.mqWidth * 0.3,
            height: 75.0,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Buy', 
                  style: TextStyle( 
                    color: Colors.white, 
                    fontWeight: FontWeight.bold, 
                    fontSize: 20.0,
                  ),
                ),
                SizedBox( width: 5.0,),
                Icon( 
                  FontAwesomeIcons.arrowRight, 
                  color: Colors.white,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}