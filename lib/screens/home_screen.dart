import 'package:flutter/material.dart';
import 'package:lojavirtual/tabs/category_tab.dart';
import '../tabs/home_tab.dart';
import '../widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "Categorias"
            ),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: CategoryTab()
        )
      ],
    );
  }
}
