import 'package:flutter/material.dart';
import 'package:ketemaa/core/utilities/app_colors/app_colors.dart';

int totalPage = 5;
int _currentPage = 0;
List<String> names = [
  'Home',
  'Favourite',
  'Place a Add',
  'Chats',
  'Profile',
];

List<IconData> icons = [
  Icons.home,
  Icons.favorite_border,
  Icons.add,
  Icons.message,
  Icons.person,
];


getBottomBar() {
  return BottomNavigationBar(
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      selectedFontSize: 12,
      unselectedFontSize: 12,
      currentIndex: _currentPage,
      onTap: (index) {
        _currentPage = index;
        setState(() {});
      },
      selectedItemColor: AppColors.black,
      unselectedItemColor: AppColors.grey,
      type: BottomNavigationBarType.fixed,
      items: List.generate(
          totalPage,
              (index) => BottomNavigationBarItem(
            icon: Icon(icons[index]),
            label: names[index],
          )));
}

void setState(Null Function() param0) {

}
