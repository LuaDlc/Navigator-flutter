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
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const TwoPage()),
              );
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


        Retornando para a page anterior e devolvendo um valor
-adicionando .then ao pusheNamed
-retornando u valor com o pop, que é um objeto que pode receber um parametro

   */

  /*
   Inclui appbar: AppBar para adicionar um botão de voltar
   Para retirar esse botão:
   
   Navigator.of(context).pushReplacedNamed('/twopage', arguments: 'teste').then(value) =>
            print(value);

            Porém ele volta pra algo q nao esta na pilha, adicione um um metodo canPop que retorna um boleano, e volta se for true
            onPressed: () {
           if(Navigator.of(context).canPop()) {
            Navigator.of(context).pop('Retorno');
           }
          },
   */


}