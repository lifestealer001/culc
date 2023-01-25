import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController controller = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
          ),
          TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
            keyboardType: TextInputType.none,
            controller: controller,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('x2')),
              ElevatedButton(onPressed: () {}, child: Text('%')),
              ElevatedButton(onPressed: () {}, child: Text('C')),
              ElevatedButton(
                  onPressed: () {
                    controller.text = ' ';
                  },
                  child: Text('clear')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '1';
                    });
                  },
                  child: Text('1')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '2';
                    });
                  },
                  child: Text('2')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '3';
                    });
                  },
                  child: Text('3')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '+';
                    });
                  },
                  child: Text('+')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '4';
                    });
                  },
                  child: Text('4')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '5';
                    });
                  },
                  child: Text('5')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '6';
                    });
                  },
                  child: Text('6')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '-';
                    });
                  },
                  child: Text('-')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '7';
                    });
                  },
                  child: Text('7')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '8';
                    });
                  },
                  child: Text('8')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '9';
                    });
                  },
                  child: Text('9')),
              ElevatedButton(onPressed: () {}, child: Text('*')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('.')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      controller.text += '0';
                    });
                  },
                  child: Text('0')),
              ElevatedButton(
                  onPressed: () {
                    String s = controller.text;
                    int ind = s.indexOf('+');
                  },
                  child: Text('=')),
              ElevatedButton(onPressed: () {}, child: Text('/')),
            ],
          ),
        ],
      )),
    );
  }
}
