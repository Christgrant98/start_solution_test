import 'package:flutter/material.dart';
import 'package:star_test_app/bottom_nav_bar.dart';
import 'package:star_test_app/categories_view.dart';
import 'package:star_test_app/custom_search_bar.dart';
import 'package:star_test_app/text_base.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 231, 209, 188),
          body: Page(),
          bottomNavigationBar: BottomNavBar(),
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  const Page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          child: const Column(
            children: [
              SizedBox(height: 35),
              TextBase(
                text: 'Venues',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: 20),
              CustomSearchBar(
                icon: Icons.search,
                placeholder: 'search',
              ),
              SizedBox(height: 10),
              CustomSearchBar(
                icon: Icons.pin_drop_outlined,
                placeholder: 'City',
              ),
              SizedBox(height: 20),
              CategoriesView(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
