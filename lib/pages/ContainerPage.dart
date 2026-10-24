import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wedding_hall_project/pages/Favoutite.dart';
import 'package:wedding_hall_project/pages/Halls.dart';
import 'package:wedding_hall_project/pages/Home.dart';
import 'package:wedding_hall_project/pages/Profile.dart';
import 'package:wedding_hall_project/pages/Supplies.dart';
import 'package:wedding_hall_project/theme/theme_provider.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    final mode = themeProvider.mode;
    List<Widget> page = [
      HallsPage(),
      SuppliesPage(),
      HomePage(),
      FavouritePage(),
      ProfilePage(),
    ];
    return Scaffold(
      backgroundColor: mode.background,
      body: page[currentPage],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          currentPage = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: '',
          ),
        ],
      ),
    );
  }
}
