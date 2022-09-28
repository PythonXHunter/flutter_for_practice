import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Tree'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  _buildHorizonRow(),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      children: [
                        _buildVerticalCol(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column _buildVerticalCol() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        NewContainer(),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Container(
          color: Colors.amber,
          height: 40.0,
          width: 40.0,
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Container(
          color: Colors.brown,
          height: 20.0,
          width: 20.0,
        ),
        Divider(
          color: Colors.black,
        ),
        Text('Aryan'),
        _buildRowAndStack(),
        Divider(),
        Text('End of the Line'),
      ],
    );
  }

  Row _buildRowAndStack() {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.lightGreen,
          radius: 100,
          child: Stack(
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.yellow,
              ),
              Container(
                height: 60.0,
                width: 60.0,
                color: Colors.amber,
              ),
              Container(
                height: 40.0,
                width: 40.0,
                color: Colors.brown,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row _buildHorizonRow() {
    return Row(
      children: [
        Container(
          color: Colors.yellow,
          height: 40.0,
          width: 40.1,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
        ),
        Expanded(
          child: Container(
            color: Colors.amber,
            height: 40.0,
            width: 40.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
        ),
        Container(
          color: Colors.brown,
          height: 40.0,
          width: 40.0,
        ),
      ],
    );
  }
}

class NewContainer extends StatelessWidget {
  const NewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      height: 60.0,
      width: 60.0,
    );
  }
}
