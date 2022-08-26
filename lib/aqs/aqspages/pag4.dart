import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediantar2/aqs/utils_aqs/widgets_aqs.dart';
//import 'package:mediantar2/aqs/utils_aqs/widgets_aqs.dart';
import 'package:mediantar2/utils/global.dart';
import 'package:mediantar2/utils/widgets_global.dart';

class Paginaaqs4 extends StatefulWidget {
  @override
  _Paginaaqs4State createState() => _Paginaaqs4State();
}

class _Paginaaqs4State extends State<Paginaaqs4> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton:
          BotaoNavegar(Colors.lightBlue[900], () => nextpage()),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              MenuTodos('Para cada questão, marque a melhor resposta',
                  Colors.lightBlue[900]),
              Divider(height: size.height * 0.06, color: Colors.transparent),
              Pergunta(
                  '10. Você divide com alguém o mesmo quarto ou a mesma cama?'),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              BotaoResposta9(
                  'Não, moro sozinho(a)', resposta9[0], () => onclick(0, 2, 0)),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              BotaoResposta9('Divido o mesmo quarto, mas não a mesma cama',
                  resposta9[1], () => onclick(0, 2, 1)),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              BotaoResposta9(
                  'Divido a mesma cama', resposta9[2], () => onclick(0, 2, 2)),
              Divider(height: size.height * 0.12, color: Colors.transparent),
            ],
          ),
        ),
      ),
    );
  }

  onclick(int inicio, int fim, int pos) {
    setState(() {
      for (int i = inicio; i <= fim; i++) {
        if (i == pos) {
          resposta9[i] = Colors.lightBlue[900];
        } else {
          resposta9[i] = corbotaopit;
        }
      }
    });
    // print('ok');
  }

  nextpage() {
    // Apenas para testar o vetor
    //for(int i=0;i<10;i++){
    // if (coresbotao[i]==Colors.green){
    // print('Opção escolhida $i');
    //}
    //}

    if (resposta9[0] == Colors.lightBlue[900]) {
      Navigator.pushNamed(context, "/fimaqs");
      respostapit9 = "Não, moro sozinho(a)";
      for (int i = 14; i < 19; i++ ) {
          if(respostaBox[i] == null) {
            setState(() {
            respostaBox[i] = "Não necessitou de resposta";
            },);}
        }
    } else if (resposta9[1] == Colors.lightBlue[900]) {
      Navigator.pushNamed(context, "/pageaqs5");
      respostapit9 = "Divido o mesmo quarto, mas não a mesma cama";
    } else if (resposta9[2] == Colors.lightBlue[900]) {
      Navigator.pushNamed(context, "/pageaqs5");
      respostapit9 = "Divido a mesma cama";
    } else
      showCupertinoDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => CupertinoAlertDialog(
            title: Row(children: [
              Icon(
                Icons.error_outline,
                color: Colors.red,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Text("AVISO"),
            ]),
            content: Text(
              "\nSelecione uma opção \npara cada sentimento!",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueAccent),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Ok"),
              ),
            ]),
      );
  }
}
