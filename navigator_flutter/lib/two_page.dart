import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {
  const TwoPage({Key ? key}) : super(key: key);

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
           Navigator.of(context).pop();
          },
          child: Text('Voltar para pagina anterior '),
        ),

      ),
    );
   }


   
}