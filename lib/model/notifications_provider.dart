import 'package:aman_notification_screen/model/app_strings.dart';
import 'package:flutter/cupertino.dart';

class NotificationsProvider extends ChangeNotifier{
  int indexOfSelectedItem = -1;
  String ItemSelectedFrom = "null";
  final List<String> newItemsList = [
    "مسلسل الغابه",
    "مسلسل الغابه",
  ];
  final List<String> oldItemsList= [
    "مسلسل الغابه",
    "مسلسل الغابه",
    "مسلسل الغابه",
    "مسلسل الغابه",
    "مسلسل الغابه",
    "مسلسل الغابه",
    "مسلسل الغابه",
    "مسلسل الغابه",
  ];
   setIndexOfSelectedItem(int index){
    indexOfSelectedItem = index;
    notifyListeners();
  }
  setItemSelectedFromNewItemsList(){
    ItemSelectedFrom = AppStrings.newItems;
  }
  setItemSelectedFromOldItemsList(){
    ItemSelectedFrom = AppStrings.oldItems;
  }
}