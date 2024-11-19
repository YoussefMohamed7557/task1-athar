import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utilities/app_utility.dart';
class  HerosQuezz extends StatelessWidget {
  const HerosQuezz({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF08131F),
                Color(0xFF0E1720)
              ]
          )
      ),
      child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: AppUtility.getText('كويز الأبطال', 22  , Colors.white),
              actions:[ Container(
                margin: const EdgeInsets.all(8),
                width: 34.h,// MediaQuery.of(context).size.height * 34 / 812,
                height: 34.w,//MediaQuery.of(context).size.height * 34 / 812,
                decoration:  BoxDecoration(
                    color: const Color.fromRGBO(0, 0, 0, 0.4),
                    borderRadius: BorderRadius.all(Radius.circular(9.r))),
                child: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
              ),
              ]),
          backgroundColor: Colors.transparent,
          body: Column(children: [
            Padding(
              padding:  EdgeInsets.only(left: 16.w,right:16.w,top: 50.h,bottom: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppUtility.getText('1/10', 24, Colors.white),
                  SizedBox(height: 15.h,width: 240.w,
                  child: LinearProgressIndicator(
                    minHeight: 15.h,
                    color:Colors.blueAccent,
                    backgroundColor: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15.h)),
                    value: 3/10,
                  ),),
                  SizedBox(
                    height: 32.h,
                      width: 32.w,
                      child: Image.asset('assets/gift.png'))
                ],
              ),
            ),
            AppUtility.getText('من هو البطل', 24, Colors.white,fontWeight: FontWeight.w900),
            Expanded(
              child:
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 40.0.h,horizontal: 8.w),
                child: GridView.builder(

                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of items per row
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: 4, // Number of items in the grid
                  itemBuilder: (context, index) {
                    return const ListItem();
                  },
                ),
              ),
            ),
            GestureDetector(
              onTap: (){

              },
              child: Container(
                margin: EdgeInsets.only(left: 16.w,right:16.w,bottom: 100.h),
                height: 48.h,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.all(Radius.circular(12.r)) ,
                    gradient: LinearGradient(
                        colors: [
                          Color(0xFF2B98FF),
                          Color(0xFF2163A1),
                        ]
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: AppUtility.getText('التالى', 18, Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],)
      ),
    );
  }
}
class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 159.h,
      width: 163.w,
      margin: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.r)),
        color: Color.fromRGBO(255, 255, 255, 0.1),
        border: Border.all(color: const Color.fromRGBO(73 , 75, 57, .5),width: 0.8.w,),),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100.h,//MediaQuery.of(context).size.width*0.19,
            width: 60.w,//MediaQuery.of(context).size.width*0.2,
            child: Image.asset('assets/avatar2.png',height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
          ),
          AppUtility.getText('مارو',16,Colors.white),
        ],
      ),
    );
  }
}
