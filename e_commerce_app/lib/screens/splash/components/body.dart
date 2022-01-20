import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Text(
                    'Tokoto',
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(36),
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("Welcome to Tokoto, Let's shop!"),
                  Image.asset(
                    'assets/images/splash_1.png',
                    height: getProportionateScreenHeight(265),
                    width: getProportionateScreenWidth(235),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}
