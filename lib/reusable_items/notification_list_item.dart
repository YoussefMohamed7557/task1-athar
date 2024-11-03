import 'package:aman_notification_screen/model/app_strings.dart';
import 'package:aman_notification_screen/utilities/app_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class NotificationListItem extends StatefulWidget {
  bool isSelected;
  String epesoidName;
  NotificationListItem({required this.isSelected,required this.epesoidName});
  @override
  State<NotificationListItem> createState() => _NotificationListItemState();
}

class _NotificationListItemState extends State<NotificationListItem> {
  BoxDecoration selectedStyleBoxDecoration = BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      gradient: LinearGradient(
        colors: [
          Color.fromRGBO(43, 152, 255, 0.4),
          Color.fromRGBO(33 , 99, 161, 0.6),
        ],
      )
  );
  BoxDecoration unselectedStyleBoxDecoration = BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      color: Color.fromRGBO(14, 23, 32, 1),
      border: Border.all(color: Color.fromRGBO(43, 152, 255, 0.3),width: 0.5,)
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 12) ,
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: 0.25,
          motion: ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
              },
              backgroundColor: Color.fromRGBO(255, 108, 108, 1),
              foregroundColor: Colors.white,
              icon: Icons.delete,

            )
          ],
        ),
        startActionPane:ActionPane(
          extentRatio: 0.25,
          motion: ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
              },
              backgroundColor: Color(0xFF2A92F4),
              foregroundColor: Colors.white,
              icon: Icons.notifications_off_outlined,
            )
          ],
        ),
        child: Container(
          width:MediaQuery.of(context).size.width,
          height: 88,
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: widget.isSelected?selectedStyleBoxDecoration:unselectedStyleBoxDecoration,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    AppUtility.getText(AppStrings.oneHour, 16, Color.fromRGBO(198, 198, 198, 1),),
                    // Text(,style: greyTextStyle,),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        AppUtility.getText(AppStrings.newEps, 18, Color.fromRGBO(198, 198, 198, 1),),
                        AppUtility.getText(widget.epesoidName, 22, Colors.white)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: SizedBox(width:60,height:60,child: Image.asset("assets/avatar.png",fit: BoxFit.fill,width: double.infinity,height: double.infinity,)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
