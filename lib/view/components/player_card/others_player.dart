import 'package:flutter/material.dart';

class OthersPlayer extends StatefulWidget {
  const OthersPlayer({super.key});

  @override
  State<OthersPlayer> createState() => _OthersPlayerState();
}

class _OthersPlayerState extends State<OthersPlayer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.6,
      color: Colors.white,
      height: 48,
      child: const Card(
        elevation: 0,
        color: Colors.transparent,
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
              children: [Text('Hamed')],
            ),
            Column(
              children: [Text('224pt')],
            ),
          ],
        ),
      ),
    );
  }
}
