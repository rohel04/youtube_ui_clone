import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BaseAppBar extends StatefulWidget implements PreferredSizeWidget {
  final AppBar appbar;

  const BaseAppBar({super.key, required this.appbar});

  @override
  State<BaseAppBar> createState() => _BaseAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(appbar.preferredSize.height);
}

class _BaseAppBarState extends State<BaseAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: Colors.grey.shade900),
      title: Container(
        child: Stack(
          children: [
            Positioned(child: Container()),
            Positioned(
                child: Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Image.network(
                'https://www.freepnglogos.com/uploads/youtube-play-red-logo-png-transparent-background-6.png',
                width: 40,
                height: 25,
              ),
            )),
            Positioned(
                left: 40,
                child: Text('YouTube',
                    style: TextStyle(
                        fontFamily: 'Oswald',
                        fontSize: 22,
                        fontWeight: FontWeight.bold)))
          ],
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.cast, size: 20)),
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined)),
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        SizedBox(width: 10),
        Container(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: CircleAvatar(
                maxRadius: 14, backgroundImage: AssetImage('assets/pp.JPG'))),
      ],
    );
  }
}
