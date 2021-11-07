import 'package:bottom_bar_page_transition/bottom_bar_page_transition.dart';
import 'package:flutter/material.dart';
import 'package:ketemaa/core/utilities/app_colors/app_colors.dart';
import 'package:ketemaa/features/controller_page/widgets/get_body.dart';
import 'package:ketemaa/features/controller_page/widgets/get_bottom_bar.dart';
import 'package:ketemaa/features/home/presentation/home.dart';

class ControllerPage extends StatefulWidget {
  const ControllerPage({Key? key}) : super(key: key);

  @override
  _ControllerPageState createState() => _ControllerPageState();
}

class _ControllerPageState extends State<ControllerPage> {
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

  @override
  void initState() {
    super.initState();
  }

  Duration duration = Duration(milliseconds: 300);
  Curve curve = Curves.ease;
  TransitionType transitionType = TransitionType.slide;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomBarPageTransition(
        builder: (_, index) => getBody(index),
        currentIndex: _currentPage,
        totalLength: totalPage,
        transitionType: transitionType,
        transitionDuration: duration,
        transitionCurve: curve,
      ),
      bottomNavigationBar: getBottomBar(),
    );
  }

  getBody(int index) {
    if (index == 0) {
      return Home();
    } else if (index == 1) {
      return Container(
        child: Center(
          child: Text(names[index]),
        ),
      );
    } else if (index == 2) {
      return Container(
        child: Center(
          child: Text(names[index]),
        ),
      );
    } else if (index == 3) {
      return Container(
        child: Center(
          child: Text(names[index]),
        ),
      );
    } else {
      return Container(
        child: Center(
          child: Text(names[index]),
        ),
      );
    }
  }

  getBottomBar() {
    return BottomNavigationBar(
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      selectedFontSize: 12,
      unselectedFontSize: 12,
      currentIndex: _currentPage,
      onTap: (index) {
        print(_currentPage);
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
        ),
      ),
    );
  }
}
