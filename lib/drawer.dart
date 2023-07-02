import 'package:flutter/material.dart';
import 'fitDiet.dart';
import 'profile.dart';

Widget drawer(BuildContext context){
  return Drawer(
    child: ListView(
      // padding: const EdgeInsets.all(10),
      children:  [
        DrawerHeader(
          child: Text(""),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/pragya1.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.tips_and_updates,
            color: Color.fromARGB(255, 81, 18, 18),
          ),
          title: const Text('Tips'),
        ),
        ListTile(
          leading: const Icon(
            Icons.health_and_safety,
            color: Color.fromARGB(255, 81, 18, 18),
          ),
          title: Text('Calorie Profiles'),


          onTap: () async => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FitDiet(),
            ),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.person,
            color: Color.fromARGB(255, 81, 18, 18),
          ),
          title: const Text('Profile'),
          onTap: () async => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Profile(),
            ),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.settings,
            color: Color.fromARGB(255, 81, 18, 18),
          ),
          title: const Text('Settings'),
        ),
      ],
    ),
  );
}