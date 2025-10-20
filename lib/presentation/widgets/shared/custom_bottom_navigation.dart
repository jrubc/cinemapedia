import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int currentIndex;
  const CustomBottomNavigation({super.key, required this.currentIndex});

  void onItemTapped(BuildContext context, int index){
    switch(index){
      case 0:
        context.go('/home/0');
        break;
        case 1:
          context.go('/home/1');
          break;
        case 2:
          context.go('/home/2');
          break;
    }
  }

  @override
  Widget build(context) {
    final colors = Theme.of(context).colorScheme;
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (value) => onItemTapped(context, value),
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