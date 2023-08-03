import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
        content: const Text('Hola mundo'),
        action: SnackBarAction(label: 'Ok', onPressed: () {}),
        duration: const Duration(seconds: 2));

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialogog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
                title: const Text('¿Estás seguro?'),
                content: const Text(
                    'Minim elit sint fugiat est dolor. Consequat do laborum qui aute in do reprehenderit mollit est duis. Ea in nulla voluptate laborum id. Eiusmod officia aliqua ut veniam.'),
                actions: [
                  TextButton(
                      onPressed: () => context.pop(),
                      child: const Text('Cancelar')),
                  FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text('Aceptar'))
                ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbars y diálogos')),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        FilledButton(
            onPressed: () {
              showAboutDialog(context: context, children: [
                const Text(
                    'Tempor ea velit est in laboris veniam proident. Enim sunt quis pariatur culpa esse laboris ex ullamco exercitation commodo culpa cillum dolor fugiat. Aliquip consectetur veniam quis minim. Commodo laborum magna ad qui.')
              ]);
            },
            child: const Text('Licencias usadas')),
        FilledButton(
            onPressed: () => openDialogog(context),
            child: const Text('Mostrar diálogo'))
      ])),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showCustomSnackbar(context),
          label: const Text('Mostrar Snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined)),
    );
  }
}
