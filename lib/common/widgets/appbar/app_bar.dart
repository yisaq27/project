import 'package:flutter/material.dart';
import 'package:pop/common/helpers/is_dark_mode.dart';

class BasicAppbar extends StatelessWidget implements PreferredSize {
  @override
  final Widget? title;
  @override
  final Size preferredSize;

  const BasicAppbar({super.key,
  this.title,}) : preferredSize = const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: title??Text(''),
      leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: context.isDarkMode
                  ? Colors.white.withOpacity(0.03)
                  : Colors.black.withOpacity(0.04),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_back_ios,
              size: 15,
              color: context.isDarkMode ? Colors.white : Colors.black,
            ),
          )),
      automaticallyImplyLeading: true,
    );
  }

  @override
  // TODO: implement child
  Size get PreferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}
