import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utilities/app_utility.dart';
class TextOnlyAnswer extends StatefulWidget {
  final int index;
  final bool isSelected;
  final bool isCorrect;
  final VoidCallback onTap;

  const TextOnlyAnswer({
    super.key,
    required this.index,
    required this.isSelected,
    required this.isCorrect,
    required this.onTap,
  });

  @override
  State<TextOnlyAnswer> createState() => _TextOnlyAnswerState();
}

class _TextOnlyAnswerState extends State<TextOnlyAnswer> {
  @override
  @override
  Widget build(BuildContext context) {
    Border  isSelectedBorder = Border.all(
      color: widget.isCorrect ? Colors.green : Colors.red,
      width: 2.w,
    );
    Border isNotSelectedBorder = Border.all(color:  Color.fromRGBO(73 , 75, 57, .5),width: 0.8.w,);
    return GestureDetector(
      onTap: widget.onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 100.h,
            width: 163.w,
            margin: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
                color: const Color.fromRGBO(255, 255, 255, 0.1),
                border:widget.isSelected?isSelectedBorder:isNotSelectedBorder),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppUtility.getText('كويكى', 18, Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
