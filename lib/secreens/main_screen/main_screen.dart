import 'package:flutter/material.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      drawer: Drawer(
        child: ListView(
          children:  [
           // DrawerHeader(child: child)
             UserAccountsDrawerHeader(
                accountName: const Text("Name"),
                accountEmail: const Text("email@gamil.com"),
               currentAccountPicture: const CircleAvatar(
                 radius: 40,
                 backgroundColor: Colors.pinkAccent,
              //   backgroundImage: ,
               ),
              // margin: EdgeInsets.all(10),
               decoration: BoxDecoration(
                 color: Colors.teal,
                // borderRadius: BorderRadius.circular(20),
                 boxShadow: [
                   BoxShadow(
                     color: Colors.black.withOpacity(0.5),
                     offset: const Offset(0,5),
                     blurRadius: 3,
                     spreadRadius: 2
                   )
                 ]
               ),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              indent: 10,
              height: 20,
              thickness: 1,
              endIndent: 10,
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
