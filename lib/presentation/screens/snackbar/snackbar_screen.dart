import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Mensaje de prueba'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialogo(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Terminos'),
        content: const Text(
            'Nostrud commodo proident excepteur aute minim ad cupidatat Lorem sit nulla non. Aute reprehenderit enim velit veniam excepteur id velit. Eu ex aliquip enim labore amet do ad Lorem sit. Proident ad aliqua commodo adipisicing aute fugiat eiusmod eu exercitation excepteur voluptate dolore. Et irure proident deserunt ullamco. Non cillum enim quis anim duis enim elit non excepteur quis ullamco labore culpa.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Eiusmod labore aute amet cillum dolor occaecat reprehenderit mollit dolor dolore consequat.'),
                  ]);
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () => openDialogo(context),
                child: const Text('Mostrar dialogo')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        splashColor: colors.primary,
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
