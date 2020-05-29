import 'package:contacts/android/views/details.view.dart';
import 'package:contacts/android/views/editor-contact.view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.transparent, elevation: 0,
        title:Text('Meus Contatos'),
        centerTitle: true,
        leading: FlatButton(
          child:Icon(Icons.search, color:Theme.of(context).primaryColor),
          onPressed: (){}),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48),
                image: null,
              ),
            ),
            title: Text('Lucas Rocha'),
            subtitle: Text('85 99628-2025'),
            trailing: FlatButton(onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => DetailsView())
              );
            }, 
            child: Icon(Icons.chat, color: Theme.of(context).primaryColor)),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor ,
        child: Icon(Icons.add,color:Theme.of(context).accentColor),
        onPressed:(){
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => EditorContactView(),)
          );
        }
      ),
    );
  }
}