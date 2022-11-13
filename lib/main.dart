import 'package:flutter/material.dart';
import 'package:flutter_furniture/models/furniture_models.dart';
import 'package:flutter_furniture/pages/detail_furniture.dart';
import 'package:flutter_furniture/product.dart';
import 'package:flutter_furniture/item_widget.dart';
import 'package:flutter_furniture/product_detail.dart';
import 'package:flutter_furniture/theme.dart';
import 'package:flutter_furniture/widgets/furniture_card.dart';

import 'package:flutter_furniture/config/route.dart';

void main(List<String> args) {
  runApp(const MyApps());
}

class MyApps extends StatefulWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  State<MyApps> createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Fruit App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
       initialRoute: '/',
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => const MainPage(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/second': (context) =>  DetailFurniture(),
  },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 5);
    super.initState();
  }

  void _tappedIndex(int i) {
    setState(() {
      _selectedIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        // bottomNavigationBar: NavBarMenu(
        //   selectedIndex: _selectedIndex,
        //   onTap: (value) => _tappedIndex(value),
        // ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const HeaderMenu(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: khorizontalPadding, vertical: 30.0),
                child: Text(
                  'Discover the most modern furniture',
                  style: TextStyle(
                    color: kFontPrimaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              // TabBarMenu(controller: _tabController),
              const Padding(
                padding: EdgeInsets.only(left: khorizontalPadding, right: khorizontalPadding, top: 30.0, bottom: 20.0),
                child: Text(
                  'Recommended Furnitures',
                  style: TextStyle(
                    color: kFontPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: Furniture.furnitures.length,
                  itemBuilder: (context, index) {
                    var furniture = Furniture.furnitures[index];
                    return FurnitureCard(
                      onTap: () => Navigator.pushNamed(
                        context,
                         '/second',
                        arguments: furniture,
                      ),
                      furniture: furniture,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
