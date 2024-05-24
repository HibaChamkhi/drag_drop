library drag_drop;
import 'package:flutter/material.dart';

class DragAndDropDemo extends StatefulWidget {
  @override
  _DragAndDropDemoState createState() => _DragAndDropDemoState();
}

class _DragAndDropDemoState extends State<DragAndDropDemo> {
  Offset position = const Offset(0.0, 0.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drag and Drop Demo'),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: position.dx,
            top: position.dy,
            child: GestureDetector(
              onPanUpdate: (details) {
                setState(() {
                  position = Offset(
                    position.dx + details.delta.dx,
                    position.dy + details.delta.dy,
                  );
                });
              },
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Drag me!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

