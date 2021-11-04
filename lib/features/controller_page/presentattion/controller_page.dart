import 'package:bottom_bar_page_transition/bottom_bar_page_transition.dart';
import 'package:flutter/material.dart';
import 'package:ketemaa/features/controller_page/widgets/get_body.dart';
import 'package:ketemaa/features/controller_page/widgets/get_bottom_bar.dart';

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

  /*Widget _getBottomBar() {
    return BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
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
*/
/*Widget _getBody(int index) {
    return CustomScrollView(
      slivers: <Widget>[
        */ /*SliverAppBar(
          title: Text(selectedTransactionType),
          backgroundColor: <Color>[
            Colors.blue,
            Colors.indigo,
            Colors.blueGrey,
            Colors.green
          ][index],
        ),*/ /*
        SliverFillRemaining(
          child: Container(
            //color: colors[index],
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                if (index == 0)
                  Container(
                    child: Text(names[index]),
                  ),
                if (index == 1)
                  Container(
                    child: Text(names[index]),
                  ),
                if (index == 2)
                  Container(
                    child: Text(names[index]),
                  ),
                if (index == 3)
                  Container(
                    child: Text(names[index]),
                  ),
                if (index == 4)
                  Container(
                    child: Text(names[index]),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }*/
}
