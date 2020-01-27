import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shopper/commons/theme.dart';
import 'package:provider_shopper/models/cart.dart';
import 'package:provider_shopper/models/catalog.dart';
import 'package:provider_shopper/screens/cart.dart';
import 'package:provider_shopper/screens/catalog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => CatalogModel()),

        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
          create: (context) => CartModel.empty(),
          update: (context, catalog, previousCart) => 
            CartModel(catalog, previousCart),
        ),
      ],
      child: MaterialApp(
          title: 'Provider Demo',
          theme: appTheme,
          initialRoute: "/",
          routes: {
            '/': (context) => MyCatalog(),
            '/cart': (context) => MyCart()
          },
      ),
    );
  }
}