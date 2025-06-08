import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:predia/utils/color.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavBar({super.key, required this.currentIndex});

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        if (Get.currentRoute != '/home') Get.offAllNamed('/home');
        break;
      case 1:
        if (Get.currentRoute != '/scan_luka')
          Get.offAllNamed('/scan_luka');
        break;
      case 2:
        if (Get.currentRoute != '/profile') Get.offAllNamed('/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, -0.5),
          ),
        ],
      ),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        color: Colors.white,
        elevation: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: currentIndex == 0 ? greenAnalisis : Colors.grey,
                ),
                onPressed: () => _onItemTapped(0),
              ),
              const SizedBox(width: 10), // space for FAB notch
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: currentIndex == 2 ? greenAnalisis : Colors.grey,
                ),
                onPressed: () => _onItemTapped(2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
