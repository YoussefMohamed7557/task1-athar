import 'dart:ui';
import 'package:aman_notification_screen/model/app_strings.dart';
import 'package:aman_notification_screen/utilities/app_utility.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../reusable_items/loading_item.dart';

class StoryDetails2 extends StatelessWidget {
  const StoryDetails2();
  @override
  Widget build(BuildContext context) {
    String storyImageUrl = AppStrings.storyImageUrl;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        StoryDetailsBackground(storyImageUrl: storyImageUrl),
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: Container(
              margin: const EdgeInsets.all(8),
              width: 34.h,// MediaQuery.of(context).size.height * 34 / 812,
              height: 34.w,//MediaQuery.of(context).size.height * 34 / 812,
              decoration:  BoxDecoration(
                  color: const Color.fromRGBO(0, 0, 0, 0.4),
                  borderRadius: BorderRadius.all(Radius.circular(9.r))),
              child: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.all(8),
                width: 34.h,// MediaQuery.of(context).size.height * 34 / 812,
                height: 34.w,//MediaQuery.of(context).size.height * 34 / 812,
                decoration:  BoxDecoration(
                    color: const Color.fromRGBO(0, 0, 0, 0.4),
                    borderRadius: BorderRadius.all(Radius.circular(9.r))),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  top: 180.h,// MediaQuery.of(context).size.height * (180 / 812),
                  right: 16.w,
                  left: 16.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.timer_outlined,
                            color: Colors.white,
                          ),
                          AppUtility.getText('10 دقائق', 14, Colors.white,
                              fontWeight: FontWeight.normal)
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                            EdgeInsets.only(bottom: 4.h, right: 14.w),
                            child: AppUtility.getText(
                                'مغامرات مارتن', 24, Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          AppUtility.getText(
                              'مغامره,كوميدى,تعليمى', 16, Colors.white,
                              fontWeight: FontWeight.normal)
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppUtility.getText('العمر', 14, Colors.white,
                              fontWeight: FontWeight.normal),
                          AppUtility.getText('3-6', 20, Colors.white,
                              fontWeight: FontWeight.w700)
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 22.h,bottom: 14.h),
                    padding:EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(22, 30, 39, 1.0),
                        borderRadius:  BorderRadius.all(Radius.circular(16.r)),
                        border: Border.all(
                          color: const Color.fromRGBO(43, 152, 255, 0.3),
                          width: 0.8.w,
                        )),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppUtility.getText('الفصل الاول', 14, Colors.white),
                        Padding(
                          padding:  EdgeInsets.symmetric(vertical: 8.0.h,horizontal: 14.w,),
                          child: AppUtility.getText(
                              'تستند سلسلة الرسوم المتحركة الجديدة للأطفال والعائلة إلى سلسلة الكتب المدرسية الأكثر مبيعا في نيويورك تايمز "يوميات البومة" للمؤلفة. تستند سلسلة الرسوم المتحركة الجديدة للأطفال والعائلة إلى سلسلة الكتب المدرسية الأكثر مبيعا في نيويورك تايمز "يوميات البومة" للمؤلفة',
                              12,
                              Colors.white,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: AppUtility.getText('الابطال', 16, Colors.white,),
                  ),
                  SizedBox(
                    height: 120.h,//MediaQuery.of(context).size.width/3.3,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder:(context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 72.h,//MediaQuery.of(context).size.width*0.19,
                              width: 72.h,//MediaQuery.of(context).size.width*0.2,
                              margin: EdgeInsets.symmetric(horizontal: 7.h)
                              ,child: Image.asset('assets/avatar.png',height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
                            ),
                            AppUtility.getText('مارو',14,Colors.white,fontWeight: FontWeight.normal)
                          ],
                        );
                      }, ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppUtility.getText('المزيد', 15, Colors.blueAccent,),
                      AppUtility.getText('الفصول', 16, Colors.white,),
                    ],
                  ),
                  Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: 140.h,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            itemBuilder:(context, index) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 100.h,//MediaQuery.of(context).size.width*0.24,
                                    width: 86.w,//MediaQuery.of(context).size.width*0.22,
                                    margin: EdgeInsets.symmetric(horizontal: 6.w),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(16.r)),
                                      border: Border.all(color: const Color.fromRGBO(73 , 75, 57, 1),width: 0.8.w,),),
                                    child:ClipRRect(
                                      borderRadius:
                                      BorderRadiusDirectional.circular(16.r),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children:[
                                            CachedNetworkImage(
                                              imageUrl: (AppStrings.storyImageUrl),
                                              height: double.infinity,
                                              width: double.infinity,
                                              fit: BoxFit.fill,
                                              placeholder: (context, url) => Container(
                                                child: LoadingShapes.circularShapSpinKit,
                                              ),
                                            ),
                                            AppUtility.getText('الغابه${index+1}', 12, Colors.white)
                                          ]
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }, ),
                        ),
                        GestureDetector(
                          onTap: (){
            
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 16.w),
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
                                SvgPicture.asset(
                                  'assets/icons/book.svg',
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
                                  child: AppUtility.getText('بدأ القراءة', 18, Colors.white),
                                )
                              ],
                            ),
                          ),
                        )
                      ]
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
class StoryDetailsBackground extends StatelessWidget {
  String storyImageUrl;
  StoryDetailsBackground({required this.storyImageUrl});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 375.w,
        height: 812.h,
        color: Color(0xFF0E1720),
      ),
      SizedBox(
          height: 367.h,// MediaQuery.of(context).size.height * 0.45,
          width: 375.w,
          child: StoryDetailsImage(imageUrl: storyImageUrl))
    ]);
  }
}
class StoryDetailsImage extends StatelessWidget {
  String imageUrl;
  StoryDetailsImage({required this.imageUrl, super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        CachedNetworkImage(
          imageUrl: (imageUrl),
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
          placeholder: (context, url) => Container(
            child: LoadingShapes.circularShapSpinKit,
          ),
          errorWidget: (context, _, error) => const Icon(
            Icons.error_outline,
            color: Colors.red,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                    0.6,
                    0.9,
                  ],
                  colors: [
                    Color.fromRGBO(14, 23, 32, 0),
                    Color.fromRGBO(14, 23, 32, 1.0),
                  ])),
        ),
      ],
    );
  }
}
