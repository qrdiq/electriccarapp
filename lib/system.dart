import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mad_project/about.dart';
import 'package:mad_project/authentication_service.dart';
import 'package:mad_project/map.dart';
import 'package:mad_project/settings.dart';
import 'package:provider/provider.dart';
import 'package:mad_project/profile.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyMap())),
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutPage())),
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage())),
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsPage())),
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () => {
              context.read<AuthenticationService>().signOut(),
            },
          ),
        ],
      ),
    );
  }
}
