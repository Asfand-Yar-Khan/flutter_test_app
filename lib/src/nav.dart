import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/Bloc/nav_bloc.dart';
import 'package:flutter_test_app/utils/constraints.dart';
import 'package:provider/provider.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  //late PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    log("Builing NAV View");
    final navBloc = Provider.of<NavBloc>(context);
    print("Active index ${navBloc.activeIndex}");
    return Scaffold(
      body: Container(
        height: getHeight(context),
        width: getWidth(context),
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: navBloc.navPageController,
          children: navBloc.navWidgts,
        ),
      ),
      bottomNavigationBar: navBloc.colorFul
          ? SlidingClippedNavBar.colorful(
              backgroundColor: Colors.white,
              onButtonPressed: (index) {
                navBloc.changeIndex(index);
              },
              iconSize: 30,
              // activeColor: const Color(0xFF01579B),
              selectedIndex: navBloc.activeIndex,
              barItems: <BarItem>[
                BarItem(
                  icon: Icons.home,
                  title: 'Home',
                  activeColor: Colors.blue,
                  inactiveColor: Colors.orange,
                ),
                BarItem(
                  icon: Icons.search_rounded,
                  title: 'Discover',
                  activeColor: Colors.yellow,
                  inactiveColor: Colors.green,
                ),
                BarItem(
                  icon: Icons.bookmark,
                  title: 'Save',
                  activeColor: Colors.blue,
                  inactiveColor: Colors.red,
                ),
                BarItem(
                  icon: Icons.person_2_rounded,
                  title: 'Profile',
                  activeColor: Colors.cyan,
                  inactiveColor: Colors.purple,
                ),
              ],
            )
          : SlidingClippedNavBar(
              backgroundColor: Colors.white,
              onButtonPressed: (index) {
                navBloc.changeIndex(index);
                print(navBloc.activeIndex);
              },
              iconSize: 30,
              activeColor: const Color(0xFF01579B),
              selectedIndex: navBloc.activeIndex,
              barItems: <BarItem>[
                BarItem(
                  icon: Icons.home,
                  title: 'Home',
                ),
                BarItem(
                  icon: Icons.search_rounded,
                  title: 'Discover',
                ),
                BarItem(
                  icon: Icons.bookmark,
                  title: 'Save',
                ),
                BarItem(
                  icon: Icons.person_2_rounded,
                  title: 'Profile',
                ),
              ],
            ),
    );
  }
}
