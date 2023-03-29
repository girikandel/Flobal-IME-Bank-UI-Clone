import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Text('GlobalSmart+'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
        ),
        IconButton(
          onPressed: () {},
          icon: const CircleAvatar(
            foregroundImage: NetworkImage(
                'https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/278286550_1658890497784822_5481877470438745654_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=d2BAqAYGSr0AX-6JgM2&_nc_ht=scontent.fktm7-1.fna&oh=00_AT_NopsBtpP5M2rMhcD3g3AZbKD-ekdmOOlg2z-GN9SOYQ&oe=63094CEF'),
          ),
        ),
      ],
    );
  }
}
