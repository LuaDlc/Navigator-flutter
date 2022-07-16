import 'package:flutter/material.dart';
import 'package:navigator_flutter/two_page.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key ? key}) : super(key: key);

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/twopage');
          },
          child: Text('Ir para segunda pagina'),
        ),

      ),
    );
   }
/*
   passando parametros via MaterialPageRoute
  -com um afinal string args:
   *final String args;*
  -Na const da class, todo objeto que nao é anulável e estive como parametro nomeado, te que
  ser requerido
  const TwoPage({Key ? key, *required this.args*}) : super(key: key);
   NA PAGE TWO:
   -Adicione o args na const do MaterialPageRoute
   onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const TwoPage(*args: 'teste'*)),
            );
          },
          child: Text('Ir para segunda pagina'),
        ),
   */


}