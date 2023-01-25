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
  TextEditingController _controller = TextEditingController();

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
            controller: _controller,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('x2')),
              ElevatedButton(onPressed: () {}, child: Text('%')),
              ElevatedButton(onPressed: () {}, child: Text('C')),
              ElevatedButton(onPressed: () {}, child: Text('clear')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _controller.text += '1';
                    });
                  },
                  child: Text('1')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _controller.text += '2';
                    });
                  },
                  child: Text('2')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _controller.text += '3';
                    });
                  },
                  child: Text('3')),
              ElevatedButton(onPressed: () {}, child: Text('+')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _controller.text += '4';
                    });
                  },
                  child: Text('4')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _controller.text += '5';
                    });
                  },
                  child: Text('5')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _controller.text += '6';
                    });
                  },
                  child: Text('6')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _controller.text += '-';
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
                      _controller.text += '7';
                    });
                  },
                  child: Text('7')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _controller.text += '8';
                    });
                  },
                  child: Text('8')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _controller.text += '9';
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
              ElevatedButton(onPressed: () {}, child: Text('0')),
              ElevatedButton(onPressed: () {}, child: Text('=')),
              ElevatedButton(onPressed: () {}, child: Text('/')),
            ],
          ),
        ],
      )),
    );
  }
}
