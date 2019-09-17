import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue[600],
          ),
          child: Center(
            child: SizedBox(
              width: 60.0,
              height: 60.0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: FlutterLogo(),
              ),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.change_history),
          title: Text('Change history'),
          onTap: () {
            // change app state...
            Navigator.pop(context); // close the drawer
          },
        )
      ],
    );
  }
}
