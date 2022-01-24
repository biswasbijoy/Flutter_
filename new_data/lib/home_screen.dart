import 'package:flutter/material.dart';
import 'package:new_data/database_helper.dart';
import 'package:new_data/student.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var textCOntroller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          initState();
          // debugPrint(textCOntroller.text);
          DataBaseHelper.instance.addData(Student(name: textCOntroller.text));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: TextField(
          controller: textCOntroller,
        ),
      ),
      body: FutureBuilder<List<Student>>(
        future: DataBaseHelper.instance.getStudent(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.isEmpty) {
              return Center(child: Text('No list found'));
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: ListTile(
                      title: Text(snapshot.data![index].name),
                    ),
                  );
                },
              );
            }
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
