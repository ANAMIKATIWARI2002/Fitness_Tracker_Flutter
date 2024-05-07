import 'package:flutter/material.dart';
import 'package:fitness_tracker/widgets/bottom_navigation.dart';
import 'package:fitness_tracker/components/Header.dart';
import 'package:fitness_tracker/components/tab_view_base.dart';

class DietPage extends StatefulWidget {
  @override
  _DietPageState createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        flexibleSpace: Header(
          'Diet',
          rightSide: Container(
            height: 35.0,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            margin: const EdgeInsets.only(right: 20.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 79, 186, 239),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: const Center(
              child: Text(
                'Tracker',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ),
        bottom: TabBar(
          controller: _tabController, // Assigning the TabController
          tabs: const <Widget>[
            Tab(
              text: 'Breakfast',
            ),
            Tab(
              text: 'Lunch',
            ),
            Tab(
              text: 'Dinner',
            ),
            Tab(
              text: 'Snacks',
            ),
          ],
          labelColor: Colors.black87,
          unselectedLabelColor: Colors.grey[400],
          indicatorWeight: 4.0,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: const Color.fromRGBO(215, 225, 255, 1.0),
        ),
      ),
      body: TabBarView(
        controller: _tabController, // Assigning the TabController
        children: <Widget>[
          TabViewBase(
            tabName: 'Breakfast',
          ),
          TabViewBase(
            tabName: 'Lunch',
          ),
          TabViewBase(
            tabName: 'Dinner',
          ),
          TabViewBase(
            tabName: 'Snacks',
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
