import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _controller1 = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    print("init");
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    print("Dispose");
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text Field Practice',
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TextField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  labelText: 'Enter your name',
                  hintText: 'John'),
              onChanged: (value) {
                int i = value.length as int;
                print('Text Field Stream: $value');
              },
            ),
            SizedBox(height: 14,),
            TextField(
              controller: _controller,
            ),
            TextField(
              controller: _controller1,
            ),
            ElevatedButton(onPressed: (){
              print(_controller.text + " " + _controller1.text);
            }, 
            child: Text('Result')),
          ]),
        ),
      ]),
    );
  }
}
