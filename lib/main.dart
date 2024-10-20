import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('你好,Flutter'),
          backgroundColor: Colors.blue,
        ),
        body: const Column(
          children: [
            MyApp(),
            MyButton(),
            MyImage(),
            MyIcon(),
          ],
        )),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      alignment: Alignment.topCenter, //子组件的对齐方式
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(color: Colors.red, width: 2),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(5, 5),
            blurRadius: 5,
          ),
        ],
        gradient: const LinearGradient(
          colors: [Colors.red, Colors.green, Colors.blue],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),

      child: const Text(
        '你好Flutter',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    ));
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 40,
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        '按钮',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.circular(75),
      ),
      child: Image.asset(
        "images/avatar.png",
        fit: BoxFit.cover,
      ),
    );
  }
}

class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 100,
      child: Icon(
        Icons.home,
        color: Colors.blue,
        size: 50,
      ),
    );
  }
}
