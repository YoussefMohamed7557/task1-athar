import 'package:flutter/material.dart';
class BackButtonItem extends StatelessWidget {
  const BackButtonItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal:22 ),
      width: 34,
      height: 34,
      decoration: BoxDecoration(
          color:const Color.fromRGBO(255, 255, 255, 0.1),
          borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child: const Icon(Icons.arrow_forward,color: Colors.white,),
    );
  }
}
