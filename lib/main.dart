import 'package:beats_ux/core/provider/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:beats_ux/views/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductsProvider())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Beats App',
        home: HomeBeatsPage(),
      ),
    );
  }
}