import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smarterminal/product/feature/auth/loginView.dart';
import 'package:smarterminal/product/pages/home/homeView.dart';
import 'package:smarterminal/product/pages/productInfo/productInfo.dart';
import 'package:smarterminal/product/pages/productInfo/productModel.dart';
import 'package:smarterminal/product/pages/scanBarcode/scanBarcodeView.dart';
import 'package:smarterminal/product/pages/searchProduct/searchProductView.dart';
import 'package:smarterminal/product/pages/shiftInfo/shiftListView.dart';

import 'core/init/notifier/providerList.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      MultiProvider(
        providers: [
          ...ApplicationProvider.instance.dependItems,

        ],
          child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    productModel model = productModel(
      id: 1,
      name: "product name",
      purchasePrice: 10.0,
      salePrice: 20.0,
      group: "group",
      monthlySale: 245,
      yearlySale: [134, 40, 120, 40, 50, 61, 73, 35, 54, 120, 10, 34],
      //this must has 30 items
      monthlySales: [10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200, 210, 220, 230, 240, 250, 260, 270, 280, 290, 300],
    );


    return MaterialApp(

      routes:  {
        "/homeView": (context) => const homeView(),
        "/scanBarcodeView": (context) => scanBarcodeView(),
        "/searchProductView": (context) =>  searchProductView(),
        "/shiftListView": (context) => shiftListView(),
      },


      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),


      //home: productInfo(model: model),
      home: LoginPage(),
    );
  }
}


