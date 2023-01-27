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

  Widget button(
    String l,
  ) {
    return ElevatedButton(
        onPressed: () {
          controller.text += l;
        },
        child: Text(l));
  }

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
              button('x2'),
              button('%'),
              ElevatedButton(
                  onPressed: () {
                    String s = controller.text;
                    controller.text = s.substring(0, s.length - 1);
                  },
                  child: Text('C')),
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
              button('1'),
              button('2'),
              button('3'),
              button('+'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button('4'),
              button('5'),
              button('6'),
              button('-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button('7'),
              button('8'),
              button('9'),
              button('*'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button('.'),
              button('0'),
              ElevatedButton(
                  onPressed: () {
                    String s = controller.text;
                    if (s.contains('+'))
                      controller.text =
                          (int.parse(s.substring(0, s.indexOf('+'))) +
                                  int.parse(s.substring(s.indexOf('+') + 1)))
                              .toString();
                    if (s.contains('-'))
                      controller.text =
                          (int.parse(s.substring(0, s.indexOf('-'))) -
                                  int.parse(s.substring(s.indexOf('-') + 1)))
                              .toString();
                    if (s.contains('*'))
                      controller.text =
                          (int.parse(s.substring(0, s.indexOf('*'))) *
                                  int.parse(s.substring(s.indexOf('*') + 1)))
                              .toString();
                    if (s.contains('/'))
                      controller.text =
                          (double.parse(s.substring(0, s.indexOf('/'))) /
                                  double.parse(s.substring(s.indexOf('/') + 1)))
                              .toString();
                  },
                  child: Text('=')),
              button('/'),
            ],
          ),
        ],
      )),
    );
  }
}
