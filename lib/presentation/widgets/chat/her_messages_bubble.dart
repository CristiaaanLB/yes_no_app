import 'package:flutter/material.dart';

class HerMessagesBubble extends StatelessWidget {
  const HerMessagesBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            //color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Aliquip qui magna velit dolor do reprehenderit irure esse.', style: TextStyle(color: Colors.white),),
            //child: Text('Voluptate fugiat esse velit adipisicing sunt aute dolor id exercitation cupidatat incididunt ipsum.', style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}