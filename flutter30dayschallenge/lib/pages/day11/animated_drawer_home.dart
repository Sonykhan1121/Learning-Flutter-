import 'package:flutter/material.dart';

class AnimatedDrawerHome extends StatefulWidget {
  const AnimatedDrawerHome({super.key});

  @override
  State<AnimatedDrawerHome> createState() => _AnimatedDrawerHomeState();
}

class _AnimatedDrawerHomeState extends State<AnimatedDrawerHome>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    // TODO: implement initState
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    super.initState();
  }

  void startAnimation() {
    if (_animationController!.isDismissed) {
      _animationController!.forward();
    } else {
      _animationController!.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final rightside = MediaQuery.of(context).size.width * 0.4;
    return AnimatedBuilder(
        animation: _animationController!,
        builder: (context, child) {
          return Stack(
            children: [
              _drawerMenu(),
              Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..translate(rightside * _animationController!.value)
                    ..scale(1 - (_animationController!.value * 0.3)),
                  child: _bodyWidget()),
            ],
          );
        });
  }

  Widget _bodyWidget() {
    return Scaffold(
      body: Column(
        children: [
          _header(),
        ],
      ),
    );
  }

  Widget _drawerMenu() {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[200],
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
                title: "Activites", IconData: Icons.add_shopping_cart_outlined),
            _drawerItem(title: "Edit User Profile", IconData: Icons.edit),
            _drawerItem(title: "Contact", IconData: Icons.contact_emergency),
            _drawerItem(title: "Logout", IconData: Icons.logout),
          ],
        ),
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
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      startAnimation();
                    },
                    child: Icon(
                      Icons.menu,
                      size: 40,
                    )),
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
