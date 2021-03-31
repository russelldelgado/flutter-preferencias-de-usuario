import 'package:flutter/material.dart';
import 'package:perferencias/src/pages/home_page.dart';
import 'package:perferencias/src/pages/setting_page.dart';

class MenuWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child:Container(),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/menu-img.jpg'),
                    fit: BoxFit.cover
                  )
                ),
              
            ),

            ListTile(
              leading: Icon(Icons.pages , color: Colors.blue,),
              title: Text('home'),
              onTap: () {
                Navigator.pushReplacementNamed(context, HomePage.routeName);
              },
              
            ),

            ListTile(
              leading: Icon(Icons.people , color: Colors.blue,),
              title: Text('Pages'),
              onTap: () {
                
              },
              
            ),

            ListTile(
              leading: Icon(Icons.alternate_email_outlined , color: Colors.blue,),
              title: Text('Pages'),
              onTap: () {
                
              },
              
            ),

            ListTile(
              leading: Icon(Icons.settings , color: Colors.blue,),
              title: Text('Pages'),
              onTap: () {
                Navigator.pop(context);
                //si uso push replace ... se convierte en raiz la pagina de settin eliminado todas las paginas anteriores
                Navigator.pushReplacementNamed(context, SettinPage.routeName);
              } 
              
            ),
           
        ],
      ),
    );
  }
}