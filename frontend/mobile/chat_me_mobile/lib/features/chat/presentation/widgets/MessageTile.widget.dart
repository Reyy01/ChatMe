import 'package:chat_me_mobile/core/utils/color_theme.utils.dart';
import 'package:chat_me_mobile/core/utils/cutom_colors.dart';
import 'package:chat_me_mobile/dic/injection.dart';
import 'package:flutter/material.dart';

class MessageTileWidget extends StatelessWidget {
  const MessageTileWidget({
    super.key,
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.isOnline,
    required this.onTap,
  });

  final String name;
  final String lastMessage;
  final String time;
  final bool isOnline;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = getIt<ColorThemeUtils>().getColors(context);
    return ListTile(
      tileColor: Colors.green,
      leading: Stack(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: CustomColors.darkOrange,
            child: Text(
              name.substring(0, 1).toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: isOnline ? Colors.green : Colors.grey,
                shape: BoxShape.circle,
                border: Border.all(
                  color: colorTheme.white_blueGrey,
                  width: 2,
                ),
              ),
            ),
          ),
        ],
      ),
      title: Text(name),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              lastMessage,
              style: TextStyle(
                color: colorTheme.black_white.withOpacity(0.6),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            time,
            style: TextStyle(
              color: colorTheme.black_white.withOpacity(0.6),
            ),
          ),
        ],
      ),
      onTap: () {
        onTap();
      },
    );
  }
}
