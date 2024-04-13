
import 'package:flutter/material.dart';
import 'package:minu/Login_Page.dart';
import 'package:minu/RegistrationPage.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override

  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        // title: const Text("AppMaking.com"),
        centerTitle: true,
        actions: [
          PopupMenuButton(onSelected: (value) {
            // your logic
            setState(() {
              var selectedItem = value.toString();
            });
            print(value);
            Navigator.pushNamed(context, value.toString());
          }, itemBuilder: (BuildContext bc) {
            return const [
              PopupMenuItem(
                child: Text("About"),
                value: '/About',
              ),
              PopupMenuItem(
                child: Text("Setting"),
                value: '/Setting',
              ),
              PopupMenuItem(
                child: Text("Edit"),
                value: '/Edit',
              ),
              PopupMenuItem(
                child: Text("Privacy"),
                value: '/Privacy',
              ),
              PopupMenuItem(
                child: Text("Security"),
                value: '/Security',
              )
            ];
          })
        ],
      ),
      drawer: Drawer(

        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                accountName: Text(
                  "Minu Jadhav",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("minujadhav1999@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "MJ",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader


             ListTile(
               leading: const Icon(
                 Icons.home,
                 size: 30,
               ),
               title: const Text('Home'),
               onTap: (){
                 Navigator.pop(context);
               },
             ),
            ListTile(
             leading: const Icon(
             Icons.person,
            size: 30,
           ),
           title: const Text('profile'),
            onTap: (){
          Navigator.pop(context);
        },
      ),
            ListTile(
              leading: const Icon(
                Icons.app_registration,
                size: 30,
              ),
              title: const Text('Registraion_Page'),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) =>
                    RegistraionPage()));
                    },

            ),
             ListTile(
            leading: const Icon(
            Icons.account_box,
           size: 30,
          ),
            title: const Text('Account'),
            onTap: () {
            Navigator.pop(context);
          },
          ),
               ListTile(
              leading: const Icon(
          Icons.contacts,
          size: 30,
          ),
             title: const Text('Contact'),
           onTap: () {
          Navigator.pop(context);
        },
      ),
              ListTile(
        leading: const Icon(
          Icons.logout,
          size: 30,
        ),
        title: const Text('Logout'),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        },

      ),

          ],

        ),
      ),
         bottomNavigationBar: BottomNavigationBar(
           currentIndex: _currentIndex,
           onTap: (int index){
             setState(() {
               _currentIndex = index;
             });
           },
           items: const [
             BottomNavigationBarItem(
               icon: Icon(Icons.home),
               label: 'Home',

             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.search),
               label: 'Search',
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.settings),
               label: 'Settings',

             ),
             // BottomNavigationBarItem(
             //   icon: Icon(Icons.exit_to_app),
             //   label: 'Exit',
             // ),
           ],
         ),
      body: const Center(


        child:  Text('A drawer is an invisible side screen.'),

      ),
      // endDrawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
    //           child: Text(
    //             'Setting Menu',
    //             style: TextStyle(
    //               color: Colors.white,
    //               fontSize: 24,
    //             ),
    //
    //           ),
    //
    //         ),
    //           ListTile(
    //             title: const Text('Setting'),
    //             onTap: () {
    //               Navigator.pop(context);
    //             },
    //           ),
    //     ListTile(
    //
    //     title: const Text('Edit'),
    //         onTap: () {
    //           Navigator.pop(context);
    // }
    //     ),
    //         ListTile(
    //
    //             title: const Text('Registraion_Page'),
    //             onTap: () {
    // Navigator.push(
    // context,
    // MaterialPageRoute(
    // builder: (context) =>
    // RegistraionPage()));
    // },
    //      ),
    //         ListTile(
    //             title: const Text('Add'),
    //             onTap: () {
    //               Navigator.pop(context);
    //             }
    //         ),
    //       ],
    //     ),
    //   ),
    );
  }
}











//Languages Select


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// class HomePage extends StatelessWidget {
//   final List locale =[
//     {'name':'ENGLISH','locale': Locale('en','US')},
//     {'name':'मराठी','locale': Locale('mr','IN')},
//     {'name':'हिंदी','locale': Locale('hi','IN')},
//   ];
//   updateLanguage(Locale locale){
//     Get.back();
//     Get.updateLocale(locale);
//   }
//   buildLanguageDialog(BuildContext context){
//     showDialog(context: context,
//         builder: (builder){
//           return AlertDialog(
//             title: Text('Choose Your Language'),
//             content: Container(
//               width: double.maxFinite,
//               child: ListView.separated(
//                   shrinkWrap: true,
//                   itemBuilder: (context,index){
//                     return Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: GestureDetector(child: Text(locale[index]['name']),onTap: (){
//                         print(locale[index]['name']);
//                         updateLanguage(locale[index]['locale']);
//                       },),
//                     );
//                   }, separatorBuilder: (context,index){
//                 return Divider(
//                   color: Colors.blue,
//                 );
//               }, itemCount: locale.length
//               ),
//             ),
//           );
//         }
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('title'.tr),),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('hello'.tr,style: TextStyle(fontSize: 15),),
//             SizedBox(height: 10,),
//             Text('message'.tr,style: TextStyle(fontSize: 20),),
//             SizedBox(height: 10,),
//            // Text('subscribe'.tr,style: TextStyle(fontSize: 20),),
//
//             ElevatedButton(onPressed: (){
//               buildLanguageDialog(context);
//             }, child: Text('changelang'.tr)),
//           ],
//         )
//     );
//   }
// }