import 'package:flutter/material.dart';
class WhiteBackgroundBackButton extends StatelessWidget {
  const WhiteBackgroundBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal:22 ),
      width: 34,
      height: 34,
      decoration: const BoxDecoration(
          color:Color.fromRGBO(255, 255, 255, 0.1),
          borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child: const Icon(Icons.arrow_forward,color: Colors.white,),
    );
  }
}
class BlackBackgroundBackButton extends StatelessWidget {
  const BlackBackgroundBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal:22 ),
      width: 34,
      height: 34,
      decoration: const BoxDecoration(
          color:Color.fromRGBO(0, 0, 0, 0.4),
          borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child: const Icon(Icons.arrow_forward,color: Colors.white,),
    );
  }
}