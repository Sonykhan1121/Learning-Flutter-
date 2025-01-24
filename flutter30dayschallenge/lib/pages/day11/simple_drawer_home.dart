import 'package:flutter/material.dart';

class SimpleHomeDrawer extends StatelessWidget {
  const SimpleHomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Drawer"),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.blueGrey,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueGrey),
                  accountName: Text(
                    "Tht limited",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  accountEmail: Text('Tht@gmail.com'),
                  currentAccountPicture: Container(
                    width: 90,
                    height: 90,
                    margin: EdgeInsets.only(
                      bottom: 30,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,

                    ),
                  ),
                ),
              ),
              _drawerItem(
                  title: "Activites",
                  IconData: Icons.add_shopping_cart_outlined),
              _drawerItem(title: "Edit User Profile", IconData: Icons.edit),
              _drawerItem(title: "Contact", IconData: Icons.contact_emergency),
              _drawerItem(title: "Logout", IconData: Icons.logout),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          _header(),
        ],
      ),
    );
  }

  Widget _header() {
    return Container(
      height: 250,
      width: double.infinity,
      color: Colors.blueGrey,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                Text("Day 11"),
                Icon(Icons.notification_important),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _drawerItem({String? title, IconData}) {
    return ListTile(
      title: Text(
        title!,
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
      leading: Icon(IconData),
    );
  }
}
