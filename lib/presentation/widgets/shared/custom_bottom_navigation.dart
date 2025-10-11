import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int selectedIndex = 0;

  @override
  Widget build(context) {
    final colors = Theme.of(context).colorScheme;
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      currentIndex: selectedIndex,
      onTap: (newIndex) {
        setState((){
          selectedIndex = newIndex;
        });
      },
      elevation: 0, 
      items: [
        BottomNavigationBarItem(
          backgroundColor: colors.primary,
          icon: Icon(Icons.home_max),
          label: 'Start'
        ),
        BottomNavigationBarItem(
          backgroundColor: colors.primary,
          icon: Icon(Icons.label_outline),
          label: 'Categories'
        ),
        BottomNavigationBarItem(
          backgroundColor: colors.primary,
          icon: Icon(Icons.favorite_outline),
          label: 'Favorites',
        ),
      ],
    );
  }
}