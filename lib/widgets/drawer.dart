import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("ABC"),
            accountEmail: Text("abc@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1503919545889-aef636e10ad4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
            ),
          ),
          //SizedBox(height: 50,width: 30)
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text("Add Payment"),
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("My Order"),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favourite Sweet"),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text("Address Management"),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Online Help"),
            // subtitle: Text("Chat & Mail"),
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text("Offline Support"),
            //subtitle: Text("Call 022453764"),
          ),
          ListTile(
            leading: Icon(Icons.info_rounded),
            title: Text("About"),
          ),
          ListTile(
            leading: Icon(Icons.update),
            title: Text("Version"),
            trailing: Text("1.0"),
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text("Send feedback"),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Rate us on playstore"),
          )
        ],
      ),
    );
  }
}
