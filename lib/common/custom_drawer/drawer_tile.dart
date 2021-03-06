import 'package:flutter/material.dart';
import 'package:loja_online_jpvp/models/page_manager.dart';
import 'package:provider/provider.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({this.iconData, this.title, this.page});

  final IconData iconData;
  final String title;
  final int page;

  @override
  Widget build(BuildContext context) {
    final int curPage = context.watch<PageManager>().page;
    final Color primaryColor = Theme.of(context).primaryColor;

    return InkWell(
      onTap: () {
        context.read<PageManager>().setPage(page);
      },
      child: SizedBox(
        height: 70,
        child: Row(
          children: <Widget>[
            const Padding(padding: EdgeInsets.symmetric(horizontal: 32)),
            Icon(
              iconData,
              size: 32,
              color: curPage == page ? primaryColor : Colors.grey[700],
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  color: curPage == page ? primaryColor : Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
