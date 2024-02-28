import 'package:flutter/material.dart';
import 'package:my_app/file2.dart';
import 'package:my_app/file3.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _isSelected = 0;

  // ignore: unused_field
  final List<bool> _animByPages = [false, false, false, false, false];
  List<bool> modifiedPages = [];

  final List<BottomNavItem> _listBottomNavItems = [
    const BottomNavItem(
      title: 'Home',
      icon: Icons.home,
      page: HomeScreen(),
    ),
    const BottomNavItem(
      title: 'Activity',
      icon: Icons.receipt,
      page: ParkingScreen(),
    ),
    const BottomNavItem(
      title: 'Wallet',
      icon: Icons.credit_card,
      page: HomeScreen(),
    ),
    const BottomNavItem(
      title: 'Notification',
      icon: Icons.notifications,
      page: HomeScreen(),
    ),
    const BottomNavItem(
      title: 'Settings',
      icon: Icons.person,
      page: HomeScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            _listBottomNavItems.length,
            (index) {
              return BottomNavItem(
                page: _listBottomNavItems[index].page,
                title: _listBottomNavItems[index].title,
                icon: _listBottomNavItems[index].icon,
                isSelected: _isSelected == index,
                onTap: () {
                  setState(() {
                    _isSelected = index;
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool? isSelected;
  final Function()? onTap;
  final Widget page;

  const BottomNavItem(
      {required this.title,
      required this.icon,
      required this.page,
      this.isSelected,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        width: 50,
        height: 40,
        decoration: BoxDecoration(
          color: isSelected == true ? Colors.black87 : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: isSelected == true ? Colors.white : Colors.black87,
              size: 17,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 7,
                fontWeight: FontWeight.bold,
                color: isSelected == true ? Colors.white : Colors.black87,
              ),
            )
          ],
        ),
      ),
    );
  }
}
