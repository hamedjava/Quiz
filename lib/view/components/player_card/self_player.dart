import 'package:flutter/material.dart';

class SelfPlayer extends StatefulWidget {
  const SelfPlayer({super.key});

  @override
  State<SelfPlayer> createState() => _SelfPlayerState();
}

class _SelfPlayerState extends State<SelfPlayer> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 3,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            children: [Text('01')],
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('assets/images/p3.jpg'),
              )
            ],
          ),
          Column(
            children: [Text('hamed')],
          ),
          Column(
            children: [Text('224pt')],
          ),
        ],
      ),
    );
  }
}
