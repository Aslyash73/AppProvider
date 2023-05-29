import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({Key? key});

  void showCustomSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text(
            'Laborum consectetur esse cupidatat excepteur consectetur est commodo consequat mollit deserunt ea veniam eiusmod. In elit laboris consequat anim dolore. Pariatur ea ullamco nisi Lorem. Et ea ad et aliquip laborum aliqua commodo laborum ea id. Culpa irure cillum quis magna. In voluptate fugiat ipsum nisi do minim culpa consequat do Lorem elit aliqua laborum. Proident non officia id ut velit cillum.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
            onPressed: () => context.pop(),
            child: const Text('Aceptar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar Mas Dialogos'),
      ),
      body: Center(
          child: Column(
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Excepteur minim magna proident Lorem magna quis officia ullamco adipisicing. Laborum cupidatat aliquip culpa ipsum in ex. Eu ex mollit mollit cillum incididunt do ipsum ea anim laboris mollit. Adipisicing non esse occaecat magna minim ea velit aliqua.')
                ]);
              },
              child: const Text('Licencias usadas')),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostar dialogo')),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar SnackBar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackBar(context),
      ),
    );
  }
}
