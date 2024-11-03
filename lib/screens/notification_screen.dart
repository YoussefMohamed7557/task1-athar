import 'package:aman_notification_screen/model/app_strings.dart';
import 'package:aman_notification_screen/model/notifications_provider.dart';
import 'package:aman_notification_screen/reusable_items/back_button.dart';
import 'package:aman_notification_screen/reusable_items/notification_list_item.dart';
import 'package:aman_notification_screen/utilities/app_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration:  const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF08131F),
              Color(0xFF0E1720),
            ],
          ),
       ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: AppUtility.getText(AppStrings.notifications, 22, Colors.white),
          actions: const [
              BackButtonItem()
          ],
        ),
        body:Consumer<NotificationsProvider>(builder: (context, provider, child) {
          return ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              if(index == 0){
                return Padding(
                  padding: const EdgeInsets.only(left:22,right: 22  ,top:22 ,bottom: 16),
                  child: AppUtility.getText(AppStrings.newItems,22,Colors.white),
                );
              }else if(index == 1){
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount:provider.newItemsList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        provider.setItemSelectedFromNewItemsList();
                        provider.setIndexOfSelectedItem(index);
                      },
                      child: NotificationListItem(epesoidName: provider.newItemsList[index],
                      isSelected: provider.indexOfSelectedItem==index&&provider.ItemSelectedFrom==AppStrings.newItems,
                      ),
                    );
                  },);
              }
              else if(index ==2){
                return Padding(
                  padding: const EdgeInsets.only(left:22,right: 22  ,top:22 ,bottom: 16),
                  child: AppUtility.getText(AppStrings.oldItems,22,Colors.white),
                );
              }else{
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount:provider.oldItemsList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        provider.setItemSelectedFromOldItemsList();
                        provider.setIndexOfSelectedItem(index);
                      },
                      child: NotificationListItem(epesoidName: provider.oldItemsList[index],
                        isSelected: provider.indexOfSelectedItem==index&&provider.ItemSelectedFrom==AppStrings.oldItems,
                      ),
                    );
                  },);
              }
            },
          ) ;
        },)
      ),
    );
  }
}

