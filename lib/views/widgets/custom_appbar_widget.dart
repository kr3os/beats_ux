import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBarBeats extends StatelessWidget {
  const CustomAppBarBeats({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: Row(
        children: [
          IconButton(icon: const Icon( FontAwesomeIcons.arrowLeft), onPressed: (){},),
          const Spacer(),
          IconButton(icon: const Icon( FontAwesomeIcons.magnifyingGlass), onPressed: (){},),
          Stack(
            children: [
              IconButton(icon: const Icon( FontAwesomeIcons.bagShopping), onPressed: (){},),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Center(
                  child: Text('1', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
          IconButton( icon: const Icon( 
            FontAwesomeIcons.ellipsisVertical, size: 19.0), 
            onPressed: (){} 
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: const SizedBox(
              width: 50,
              height: 50,
              child: Image(
                image: NetworkImage('https://images.pexels.com/photos/4843595/pexels-photo-4843595.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 15.0,)
        ],
      ),
    );
  }
}