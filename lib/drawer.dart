import 'package:flutter/material.dart';
import 'package:sortify/constants.dart';
import 'main.dart';
class NavigationDrawer extends StatelessWidget {
  NavigationDrawer(this.index);
  int index;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            buildMenuItems(context,index)
          ],
        ),
      ),
    );
  }
}
Widget buildHeader(BuildContext context){
  return Container(
    padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
  );
}
Widget buildMenuItems(BuildContext context,index){
  return Column(
    children: [
      ListTile(
        title: Text('Bubble Sort',style: ktextStyle,),
        onTap: (){
          index =0;
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(index)));
        },
      ),
      const Divider(color: Color(0xFF0E4D64),),
      ListTile(
        title: Text('Quick Sort',style: ktextStyle,),
        onTap: (){
          index=1;
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(index)));
        },
      ),
      const Divider(color: Color(0xFF0E4D64),),
      ListTile(
        title: Text('Selection Sort',style: ktextStyle,),
        onTap: (){
          index=2;
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(index)));
        },
      ),
      const Divider(color: Color(0xFF0E4D64),),
      ListTile(
        title: Text('Merge Sort',style: ktextStyle,),
        onTap: (){
          index=3;
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(index)));
        },
      ),
      const Divider(color: Color(0xFF0E4D64),),
      ListTile(
        title: Text('Insertion Sort',style: ktextStyle,),
        onTap: (){
          index=4;
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(index)));
        },
      ),
      const Divider(color: Color(0xFF0E4D64),),
    ],
  );
}