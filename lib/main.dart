import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:x_mobil_app/screens/x_abonelik_plani.dart';
import 'package:x_mobil_app/utils/constant.dart';

appRoutes() => [
      GetPage(
        name: '/home',
        page: () => MyApp(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/second',
        page: () => AbonelikPlani(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: appRoutes(),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Align(
          child: Container(
            padding: EdgeInsets.only(top: 20),
            width: double.infinity,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                screenAbonelik(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget screenAbonelik() {
  return MaterialButton(
    onPressed: () {
      Get.to(AbonelikPlani());
    },
    child: Text(
      'Abonelik Planı',
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );

  /* return GestureDetector(
    onTap: () {
      Get.offAll(AbonelikPlani());
    },
    child: Text(
      'Abonelik Planı',
      style: TextStyle(
        decorationColor: Colors.blue,
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        decoration: TextDecoration.underline,
      ),
    ),
  ); */
}
