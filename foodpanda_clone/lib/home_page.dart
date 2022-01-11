import 'package:flutter/material.dart';
import 'package:foodpanda_clone/home_page_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(115.0),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Text(
                    'Current Location',
                    style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                  ),
              Text(
                'Technical Road             ',
                style: TextStyle(
                  color: Colors.black,
                // fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
            
          ),
          
        
          iconTheme: IconThemeData(color: Colors.pink),
          actions: <Widget>[
            IconButton(onPressed: () {
              print("Hello");
              },
              icon: Icon(
              Icons.shopping_basket_outlined,
              ),
            ),],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: SearchBar(),
            ),
            
          
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Log in / Create Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.help),
                title: Text('Help Center'),
              ),
            ),
            ListTile(
              title: Text('Settings'),
            ),
            ListTile(
              title: Text('Terms & Conditions / Privacy'),
            )
          ],
        ),
      ),
       body: ContentScreen(),
    );
  }
}
class SearchBar extends StatelessWidget {
  // const SearchBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
      child: TextField(

        decoration: InputDecoration(
          
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(
              width: 0,
              color: Color(0xFFfb3132),
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xFFfb3132),
          ),
          fillColor: Color(0xFFFAFAFA),
          //suffixIcon: Icon(Icons.sort,color: Color(0xFFfb3132),),
          hintStyle: new TextStyle(color: Color(0xFFd0cece), fontSize: 18),
          hintText: "Search for Shops & Restarent", 
        ),
      ),
    );
  }
}