import 'package:flutter/material.dart';

class BasicAppbar extends StatelessWidget {
@override
  final Size preferredSize;

  BasicAppbar({Key? key}) : preferredSize = const Size.fromHeight(56.0), super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'AppBarScreen',
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.of(context).pop(),
      ),
      automaticallyImplyLeading: true,
    );
  }
}