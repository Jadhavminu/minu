import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Calculator';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: AddMultipleNumbers(),
      ),
    );
  }
}

class AddMultipleNumbers extends StatefulWidget {
  @override
  _AddMultipleNumbersState createState() => _AddMultipleNumbersState();
}

class _AddMultipleNumbersState extends State<AddMultipleNumbers> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String result = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
            controller: num1controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'First Number',
              hintText: 'Enter First Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: num2controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Second Number',
              hintText: 'Enter Second Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            children: [
              ElevatedButton(
                child: Text("Addition"),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(num1controller.text) +
                        int.parse(num2controller.text);
                    result = sum.toString();
                  });
                },
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              ElevatedButton(
                child: Text("Subtraction"),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(num1controller.text) -
                        int.parse(num2controller.text);
                    result = sum.toString();
                  });
                },
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              ElevatedButton(
                child: Text("Multiplication"),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(num1controller.text) *
                        int.parse(num2controller.text);
                    result = sum.toString();
                  });
                },
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              ElevatedButton(
                child: Text("Division"),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(num1controller.text) ~/
                        int.parse(num2controller.text);
                    result = sum.toString();
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text('Result : $result'),
        ],
      ),
    );
  }
}