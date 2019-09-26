import 'package:flutter/material.dart';
import 'package:wycode_admin_flutter/dashboard/dashboard.dart';
import 'package:wycode_admin_flutter/dota/dota.dart';
import 'sidebar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  Widget _content = Dashboard();

  void _pageChage(pagePath) {
    setState(() {
      switch (pagePath) {
        case 'dashboard':
          _content = Dashboard();
          break;
        case 'dota':
          _content = Dota();
          break;
        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Flutter Admin'),
      ),
      drawer: Drawer(child: SideBar(onPageSelected: _pageChage)),
      body: _content,
    );
  }
}
