import 'package:flutter/material.dart';
import 'package:flutter_widgets_funcionales/config/router/app_router.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Botones'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            //Elevated Buttons
            ElevatedButton(
                onPressed: () {}, child: const Text('Elevated Button')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevated Disabled')),
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text('Elevated Icon'),
              icon: const Icon(Icons.access_alarm_rounded),
            ),
            //Filled Buttons
            FilledButton(onPressed: () {}, child: const Text('Filled Button')),
            FilledButton.icon(
              onPressed: () {},
              label: const Text('Filled Icon'),
              icon: const Icon(Icons.file_download_rounded),
            ),
            //Outlined Buttons
            OutlinedButton(
                onPressed: () {}, child: const Text('Outlined Button')),
            OutlinedButton.icon(
              onPressed: () {},
              label: const Text('Outlined Icon'),
              icon: const Icon(Icons.add_location),
            ),
            //Text Buttons
            TextButton(onPressed: () {}, child: const Text('Text Button')),
            TextButton.icon(
              onPressed: () {},
              label: const Text('Text Button'),
              icon: const Icon(Icons.account_box_outlined),
            ),
            //Text Buttons
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.app_settings_alt_outlined),
                color: colors.primary),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_settings_alt_outlined),
              color: Colors.white,
              style: IconButton.styleFrom(
                backgroundColor: colors.primary,
              ),
            ),
            //Custom Buttons
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Custom Button',
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
