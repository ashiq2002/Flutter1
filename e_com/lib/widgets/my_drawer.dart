import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text('Md. Ashiq Hossain'),
              accountEmail: Text('mdashiqhossain6@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/62563665?s=400&u=370b5b712e39b6b60706ef95e4695b04e9f74be7&v=4'),
              ),
            ),
          ),
          
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
          ),

          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
          ),

          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
