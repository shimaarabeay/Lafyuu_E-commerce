import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'core/utils/on_generate_route.dart';
import 'feature/home/presentation/view/favorite_product_view.dart';



void main() {
  runApp(

    DevicePreview(
      enabled: true,
      builder: (context) {
        return const  MyApp();
      }, // Wrap app
    ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
// initialRoute: SplashView.routeName,

 home: FavoriteProductView(),
    );
  }
}

