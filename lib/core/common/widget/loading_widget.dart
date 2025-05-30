import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetsManager.images.logo.provider() , 
          width: 120,),
          Text(" جاري التحميل..")

        ],
      ),
    );
  }
}