import 'package:pets_project/list_screen/view/adsView/list_ads_appbar.dart';
import 'package:pets_project/list_screen/view/newAdView/list_new_ad.dart';
import 'package:pets_project/list_screen/view/profileView/list_profile.dart';

import '../view/profileView/list_profile_edit.dart';

const String constMenuItemFirst = "Все";
const String constMenuItemSecond = "Собаки";
const String constMenuItemThird = "Кошки";
const String constMenuItemFouth = "Другие";

const String constDownMenuItemOne = "Объявления";
const String constDownMenuItemTwo = "Создать объявление";
const String constDownMenuItemThree = "Профиль";

const List widgetSelect = [
  ListItems(),
  ListAddAd(),
  ListProfile(),
  ListProfileEdit(),
];