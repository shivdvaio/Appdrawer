import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Drawerapp(
      ),
    );
  }
}

class Drawerapp extends StatefulWidget {
  @override
  _DrawerappState createState() => _DrawerappState();
}

class _DrawerappState extends State<Drawerapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue.withOpacity(0.4),
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.4),
        ),
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.white10.withOpacity(0.6), BlendMode.dstATop),
                    image: AssetImage("Asset/background.png"))),
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  decoration:
                      BoxDecoration(color: Colors.blue.withOpacity(0.5)),
                  accountName: Text("Shiv Pratap Singh"),
                  accountEmail: Text("shivpratapcha@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("Asset/shiv.png"),
                  ),
                ),
                listtile(
                  title: "Education",icon: Icon(Icons.school,size: 30,color: Colors.lightBlueAccent,),
                  function: () {},
                ),
                SizedBox(height: 10,),
                listtile(title: "Address",icon: Icon(Icons.home,size: 30,color: Colors.lightBlueAccent,),),
                SizedBox(height: 10,),
                listtile(title: "Social Profiles",icon: Icon(Icons.account_circle,size: 30,color: Colors.lightBlueAccent,),),
                SizedBox(height: 10,),
                listtile(title: "Feeds",icon: Icon(Icons.cast_connected,size: 30,color: Colors.lightBlueAccent,),),

              ],

            ),
          ),
        ),
      ),
    );
  }
}

class listtile extends StatelessWidget {
  String title;
  Icon icon;
  listtile({@required this.title, this.function,this.icon});
  Function function;

  @override
  Widget build(BuildContext context) {
    return Ink(
      color: Colors.grey,
      child: ListTile(
        leading: icon,
        onTap: function,
        title: Text("$title", style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
