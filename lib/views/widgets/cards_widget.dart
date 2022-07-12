import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:beats_ux/core/global/styles/styles.dart';
import 'package:beats_ux/core/models/products_model.dart';
import 'package:beats_ux/core/provider/products_provider.dart';

import 'package:beats_ux/views/pages/details_page.dart';

class CardsView extends StatelessWidget {
  const CardsView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductsProvider>(context);
    late PageController controller = PageController(viewportFraction: 0.85);

    return SizedBox(
      width: double.infinity,
      height: 50 / 100 * context.mqHeight,
      child: PageView(
        controller: controller,
        children: productsProvider.products.map( (prod) => 
          GestureDetector(
            child: _Card( product: prod ),
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const DetailsPage(),
                )
              );
            },
          )
        ).toList(),
      ),
    );
  }
}


class _Card extends StatelessWidget {
  const _Card({ Key? key, required this.product}) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            _FirstDescription(product: product),
           const SizedBox( width: 50.0,),
            _SecondDescription(product: product)
          ],
        ),
        Positioned(
          top: 4 / 100 * context.mqHeight,
          left: 7 / 100 * context.mqHeight,
          child: 
          Image(
            image: AssetImage('assets/beats/${product.url}'),
            width: 160.0,
          )
        )
      ],
    );
  }
}


class _FirstDescription extends StatelessWidget {
  const _FirstDescription({ Key? key, required this.product}) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: RotatedBox(
        quarterTurns: 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon( FontAwesomeIcons.batteryFull, size: 15.0,),
            const SizedBox(width: 10,),
            Text('${product.battery}-Hour Battery', style: const TextStyle(fontSize: 12.0),),
            const SizedBox(width: 10,),
            const Icon( FontAwesomeIcons.wifi, size: 15.0,),
            const SizedBox(width: 10),
            const Text('Wireless', style: TextStyle(fontSize: 12.0),)
          ],
        ),
      ),
    );
  }
}


class _SecondDescription extends StatelessWidget {
  const _SecondDescription({Key? key, required this.product}) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: context.mqWidth * 0.55,
          height: 40 / 100 * context.mqHeight,
          color: Color(product.color),
          child: Column(
            children: [
              const SizedBox(height: 25),
              RotatedBox(
                quarterTurns: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text( product.title, style: const TextStyle(color: Colors.white24, fontSize:30, fontWeight: FontWeight.bold)),
                    Text( product.subtitle, style: const TextStyle(color: Colors.white24, fontSize:30, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const Spacer(),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(product.name, style: const TextStyle( color: Colors.white))
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 80,
                    child: Text(
                      '\$${product.price}', 
                      style: const TextStyle(
                        color: Colors.white, 
                        fontWeight: FontWeight.bold
                        )
                      ),
                  ),
                  Container(
                    width: 13 / 100 * context.mqHeight,
                    height: 45.0,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15))
                    ),
                    child: const Center(
                      child: Text('Add to Bag', style: TextStyle(color: Colors.white),),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}