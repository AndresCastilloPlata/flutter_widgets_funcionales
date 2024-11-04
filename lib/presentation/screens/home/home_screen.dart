import 'package:flutter_widgets_funcionales/config/menu/menu_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (BuildContext context, int index) {
        final menuItem = appMenuItems[index];
        return _CustomListTitle(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_right, color: colors.primary, size: 40),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        context.push(menuItem.link);
        // Navigator.pushNamed(context, menuItem.link);
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const ButtonsScreen(),
        //   ),
        // );
      },
    );
  }
}
