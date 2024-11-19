import 'dart:async';
import 'dart:math';
import 'package:aman_notification_screen/reusable_items/text_only_answer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utilities/app_utility.dart';
import 'package:confetti/confetti.dart';
class HerosQuezzWithLogic extends StatefulWidget {
  const HerosQuezzWithLogic({super.key});

  @override
  State<HerosQuezzWithLogic> createState() => _HerosQuezzWithLogicState();
}
class _HerosQuezzWithLogicState extends State<HerosQuezzWithLogic> {
  late ConfettiController _leftConfettiController;
  late ConfettiController _rightConfettiController;
  bool _showAlert = false;
  bool _isCorrectAnswer = false;
  int? _selectedIndex;
  int index = 0;
  @override
  void initState() {
    super.initState();
    _leftConfettiController = ConfettiController(duration: const Duration(milliseconds: 800));
    _rightConfettiController = ConfettiController(duration: const Duration(milliseconds: 800));
  }
  void _playConfetti() {
    _leftConfettiController.play();
    _rightConfettiController.play();
  }
  void _showAnswerAlert(bool isCorrect) {
    setState(() {
      _isCorrectAnswer = isCorrect;
      _showAlert = true;
    });
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _showAlert = false;
      });
    });
  }
  void _onItemSelected(int index) {
    final isCorrect = index == 1;
    if (isCorrect) {
      _showAnswerAlert(true);
      _playConfetti();
    } else {
      _showAnswerAlert(false);
    }
    setState(() {
      _selectedIndex = index;
      _isCorrectAnswer = isCorrect;
    });
  }

  @override
  void dispose() {
    _leftConfettiController.dispose();
    _rightConfettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0.h, horizontal: 8.w),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: ConfettiWidget(
                confettiController: _leftConfettiController,
                blastDirection: pi / 4,
                emissionFrequency: 0.05,
                numberOfParticles: 20,
                maxBlastForce: 20,
                minBlastForce: 5,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ConfettiWidget(
                confettiController: _rightConfettiController,
                blastDirection: 3 * pi / 4,
                emissionFrequency: 0.05,
                numberOfParticles: 20,
                maxBlastForce: 20,
                minBlastForce: 5,
              ),
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                final isCorrect = index == 1;
                return ListItem(
                  index: index,
                  isSelected: index == _selectedIndex,
                  isCorrect: isCorrect && index == _selectedIndex,
                  onTap: () => _onItemSelected(index),
                );
              },
            ),
          ],
        ),
      ),
    ),Column(
      children: [
        SizedBox(
            height: 200.h,
            width: 300.w,
            child: Image.asset('assets/avatar2.png',width: double.infinity,height: double.infinity,fit: BoxFit.fill,)),
        SizedBox(
          height: 250.h,
          width: 400.w,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: ConfettiWidget(
                  confettiController: _leftConfettiController,
                  blastDirection: pi / 4,
                  emissionFrequency: 0.05,
                  numberOfParticles: 20,
                  maxBlastForce: 20,
                  minBlastForce: 5,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: ConfettiWidget(
                  confettiController: _rightConfettiController,
                  blastDirection: 3 * pi / 4,
                  emissionFrequency: 0.05,
                  numberOfParticles: 20,
                  maxBlastForce: 20,
                  minBlastForce: 5,
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: Column(
                    children: [
                      Expanded(
                        child: Row(
                            children: [
                              TextOnlyAnswer(
                                index: 0,
                                isSelected: 0 == _selectedIndex,
                                isCorrect: false,
                                onTap: () => _onItemSelected(0),
                              ),
                              TextOnlyAnswer(
                                index: 1,
                                isSelected: 1 == _selectedIndex,
                                isCorrect: true,
                                onTap: () => _onItemSelected(1),
                              ),
                            ]
                        ),
                      ),
                      Expanded(
                        child: Row(
                            children: [
                              TextOnlyAnswer(
                                index: 2,
                                isSelected: 2 == _selectedIndex,
                                isCorrect: false,
                                onTap: () => _onItemSelected(2),
                              ),
                              TextOnlyAnswer(
                                index: 3,
                                isSelected: 3 == _selectedIndex,
                                isCorrect: false,
                                onTap: () => _onItemSelected(3),
                              ),
                            ]
                        ),
                      )
                    ]
                ),
              )
            ],
          ),
        ),
      ],
    ),];
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xFF08131F), Color(0xFF0E1720)]),
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor:_showAlert?
             (_isCorrectAnswer
            ? Colors.green
            : Colors.red)
              : Colors.transparent,
          elevation: 0,
          title: AppUtility.getText('كويز الأبطال', 22, _showAlert?Colors.transparent:Colors.white),
          actions: [
            Container(
              margin: const EdgeInsets.all(8),
              width: 34.h,
              height: 34.w,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 0, 0, 0.4),
                borderRadius: BorderRadius.all(Radius.circular(9.r)),
              ),
              child: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 50.h, bottom: 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppUtility.getText('1/10', 24, Colors.white),
                      SizedBox(
                        height: 15.h,
                        width: 240.w,
                        child: LinearProgressIndicator(
                          minHeight: 15.h,
                          color: Colors.blueAccent,
                          backgroundColor: Colors.white,
                          value: 3 / 10,
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                        width: 32.w,
                        child: Image.asset('assets/gift.png'),
                      ),
                    ],
                  ),
                ),
                AppUtility.getText('من هو البطل', 24, Colors.white, fontWeight: FontWeight.w900),
                items[index],
                GestureDetector(
                  onTap: () {
                    index = index==0?1:0;
                    _showAlert = false;
                    _isCorrectAnswer = false;
                    _selectedIndex = null;
                    setState(() {});
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 50.h),
                    height: 48.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.r)),
                      gradient: const LinearGradient(colors: [Color(0xFF2B98FF), Color(0xFF2163A1)]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                          child: AppUtility.getText('التالى', 18, Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (_showAlert)
              AnimatedPositioned(
                duration: const Duration(milliseconds: 1000),
                top: _showAlert ? 0 : -200.h,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(16.h),
                  color: _isCorrectAnswer ? Colors.green : Colors.red,
                  child:_isCorrectAnswer ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppUtility.getText('! صحيح' ,
                        22,
                        Colors.white,
                      ),
                      SizedBox(height: 8.h,),
                      Container(
                        width: 100.w,
                        height: 40.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppUtility.getText('+ 30' ,
                              20,
                              Colors.black,
                            ),
                            SizedBox(width: 8.w,),
                            Icon(Icons.attach_money_sharp,color: Colors.amber,)
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                      )
                    ],
                  ):Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppUtility.getText('! خطأ' ,
                        22,
                        Colors.white,
                      ),
                      SizedBox(height: 8.h,),
                      Container(
                        width: 200.w,
                        height: 40.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppUtility.getText('كدت تفعلها' ,
                              22,
                              Colors.red,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                      )
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatefulWidget {
  final int index;
  final bool isSelected;
  final bool isCorrect;
  final VoidCallback onTap;

  const ListItem({
    super.key,
    required this.index,
    required this.isSelected,
    required this.isCorrect,
    required this.onTap,
  });

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
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
            height: 159.h,
            width: 163.w,
            margin: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16.r)),
              color: const Color.fromRGBO(255, 255, 255, 0.1),
              border:widget.isSelected?isSelectedBorder:isNotSelectedBorder),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedScale(
                  scale: widget.isCorrect ? 1.5 : 1.0,
                  duration: const Duration(milliseconds: 300),
                  child: SizedBox(
                    height: 100.h,
                    width: 60.w,
                    child: Image.asset(
                      'assets/avatar2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                AppUtility.getText('مارو', 16, Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
