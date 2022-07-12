
import 'package:beats_ux/core/global/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:beats_ux/core/provider/products_provider.dart';



class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);



 @override
  Widget build(BuildContext context) {
  // final productsProvider  = Provider.of<ProductsProvider>(context).products;
  // final products = productsProvider.map( (product) => product).toList();

    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const HeaderWidget(),
            SizedBox(
              height: 40 / 100 * context.mqHeight,
              child: const WebView(
                javascriptMode: JavascriptMode.unrestricted,
                initialUrl: 'https://app.vectary.com/p/6HJv4roQdYBqudM0ZBdWTp',
                backgroundColor: Colors.transparent,
              ),
            ),
            const Description1(),
            const SizedBox(height: 15,),
            const Description2(),
            const SizedBox(height: 10,),
            const Description3(),
            const SizedBox(height: 10,),
            const Divider(color: Color.fromARGB(87, 163, 163, 163), thickness: 2,),
          ],
        ),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xFFABCDDF)
              ),
              child: const Center(
                child: Text('Purchase'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          InkWell(
            child: const Icon(Icons.arrow_back_ios_new),
            onTap: () => Navigator.pop(context),
          ),
          const Text(
          'Head Phones',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),            
          ),
          const InkWell(
            child: Icon(Icons.shopping_bag),
          ),
        ],
      ),
    );
  }
}

class Description1 extends StatelessWidget {
  const Description1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            color: Colors.red,
            width: 65 / 100 * context.mqWidth,
            child: RichText(
              textAlign: TextAlign.start,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              text: const TextSpan(
                text: 'Officia dolor laborum ad Lorem in quis do ea occaecat..',
                style: TextStyle(fontSize: 20, color: Colors.black)
              ),
            ),
          ),
        ),
        Container(
          height: 50,
          width: 90,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFABCDDF)
          ),
          child: const Center(
            child: Text('\$325.0'),
          ),
        ),
      ],
    );
  }
}

class Description2 extends StatelessWidget {
  const Description2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: RichText(
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        text: const TextSpan(
          text: 'Laboris ea cupidatat commodo id laboris irure nostrud dolore Lorem nisi pariatur tempor dolore. Ex ut sunt sit consequat. Qui exercitation nisi amet sunt irure deserunt fugiat elit reprehenderit sint aliqua culpa ex. Ullamco adipisicing fugiat et ut cupidatat.',
          style: TextStyle(fontSize: 15, color: Colors.grey)
        ),
      ),
    );
  }
}


class Description3 extends StatelessWidget {
  const Description3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 8 / 100 * context.mqHeight,
          width: 20 / 100 * context.mqWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Image.asset('assets/beats/gold.png', fit: BoxFit.contain,),
        ),
        Container(
          height: 8 / 100 * context.mqHeight,
          width: 20 / 100 * context.mqWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Image.asset('assets/beats/gold.png', fit: BoxFit.contain,),
        ),
        Container(
          height: 8 / 100 * context.mqHeight,
          width: 20 / 100 * context.mqWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Image.asset('assets/beats/gold.png', fit: BoxFit.contain,),
        ),
        Container(
          height: 8 / 100 * context.mqHeight,
          width: 20 / 100 * context.mqWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Image.asset('assets/beats/gold.png', fit: BoxFit.contain,),
        ),
      ],
    );
  }
}