import 'package:flutter/material.dart';
import 'choice.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp ({super.key});
  static const appTitle = 'Home_Page';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
   final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
   const List<Choice> choices = <Choice>[
     Choice (name: 'setting', icon: Icons.settings),
     Choice (name: 'edit', icon: Icons.edit),
     Choice (name: 'add', icon: Icons.add),
   ];
class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _select(Choice choice) {
    setState(() {});
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'settings',
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'add',
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation),
              label: 'Navigation',
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.exit_to_app),
              label: 'exit',
              backgroundColor: Colors.blueAccent),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.grey,
        iconSize: 50,
        onTap: _onItemTapped,
        elevation: 5,
      ),
      appBar: AppBar(
        title: const Text('Home_Page'),
        actions: <Widget>[
          PopupMenuButton<Choice>(
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return Choice.skip(0).map((Choice choice) {
                return PopupMenuItem<Choice>(
                  value: choice,
                  child: Row(children: [
                    Icon((choice.icon)),
                    Text(choice.name)
                  ],),
                );
              }
              ).toList();
            },
          ),
        ],
      ),
      body: const Center(
      ),
      drawer: Drawer(
          child:
          ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('DrawerHeader'),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  size: 30,
                ),
                title: const Text('Home'),
                selected: _selectedIndex == 0,
                onTap: () {
                  _onItemTapped(0);
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(
                  Icons.home,
                  size: 30,
                ),
                title: const Text('Home'),
                selected: _selectedIndex == 0,
                onTap: () {
                  _onItemTapped(0);
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(
                  Icons.circle,
                  size: 30,
                ),
                title: const Text('Profile'),
                selected: _selectedIndex == 1,
                onTap: () {
                  _onItemTapped(1);
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(
                  Icons.view_list,
                  size: 30,
                ),
                title: const Text('View'),
                selected: _selectedIndex == 3,
                onTap: () {
                  _onItemTapped(2);
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(
                  Icons.account_box,
                  size: 30,
                ),
                title: const Text('Account'),
                selected: _selectedIndex == 4,
                onTap: () {
                  _onItemTapped(2);
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(
                  Icons.contacts,
                  size: 30,
                ),
                title: const Text('Contact'),
                selected: _selectedIndex == 5,
                onTap: () {
                  _onItemTapped(2);
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(
                  Icons.logout,
                  size: 30,
                ),
                title: const Text('Logout'),
                selected: _selectedIndex == 0,
                onTap: () {
                  _onItemTapped(0);
                  Navigator.pop(context);
                },
              ),

            ],
          )
      ),
    );

  }
}

