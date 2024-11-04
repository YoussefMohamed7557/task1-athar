import 'package:aman_notification_screen/model/app_strings.dart';
import 'package:aman_notification_screen/model/notification_model.dart';
import 'package:flutter/cupertino.dart';

class NotificationsProvider extends ChangeNotifier {
  int indexOfSelectedItem = -1;
  String ItemSelectedFrom = "null";
  final List<NotificationModel> newItemsList = [
    NotificationModel(
        notificationType: AppStrings.newEps,
        notificationTitle: AppStrings.epsoidName,
        notificationDuration: AppStrings.oneHour,
        notificationImageUrl: AppStrings.imageUrl),
    NotificationModel(
        notificationType: AppStrings.newEps,
        notificationTitle: AppStrings.epsoidName,
        notificationDuration: AppStrings.oneHour,
        notificationImageUrl: AppStrings.imageUrl),
  ];
  final List<NotificationModel> oldItemsList = [
    NotificationModel(
        notificationType: AppStrings.newEps,
        notificationTitle: AppStrings.epsoidName,
        notificationDuration: AppStrings.oneHour,
        notificationImageUrl: AppStrings.imageUrl),
    NotificationModel(
        notificationType: AppStrings.newEps,
        notificationTitle: AppStrings.epsoidName,
        notificationDuration: AppStrings.oneHour,
        notificationImageUrl: AppStrings.imageUrl),
    NotificationModel(
        notificationType: AppStrings.newEps,
        notificationTitle: AppStrings.epsoidName,
        notificationDuration: AppStrings.oneHour,
        notificationImageUrl: AppStrings.imageUrl),
    NotificationModel(
        notificationType: AppStrings.newEps,
        notificationTitle: AppStrings.epsoidName,
        notificationDuration: AppStrings.oneHour,
        notificationImageUrl: AppStrings.imageUrl),
    NotificationModel(
        notificationType: AppStrings.newEps,
        notificationTitle: AppStrings.epsoidName,
        notificationDuration: AppStrings.oneHour,
        notificationImageUrl: AppStrings.imageUrl),
    NotificationModel(
        notificationType: AppStrings.newEps,
        notificationTitle: AppStrings.epsoidName,
        notificationDuration: AppStrings.oneHour,
        notificationImageUrl: AppStrings.imageUrl),
  ];
  setIndexOfSelectedItem(int index) {
    indexOfSelectedItem = index;
    notifyListeners();
  }

  setItemSelectedFromNewItemsList() {
    ItemSelectedFrom = AppStrings.newItems;
  }

  setItemSelectedFromOldItemsList() {
    ItemSelectedFrom = AppStrings.oldItems;
  }
}
