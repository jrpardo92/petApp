import 'package:flutter/material.dart';

class CardPet1 extends StatelessWidget {
  const CardPet1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Image(
        width: 500,
        image: AssetImage('assets/images/max.jpg'),
      ),
    );
  }
}
