import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediantar2/aqs/utils_aqs/widgets_aqs.dart';
import 'package:mediantar2/utils/global.dart';
import 'package:mediantar2/utils/widgets_global.dart';

class Paginaaqs2 extends StatefulWidget {
  @override
  _Paginaaqs2State createState() => _Paginaaqs2State();
}

class _Paginaaqs2State extends State<Paginaaqs2> {
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
              PerguntaM(
                  '5. Durante $art $per passad$art, com que frequência você teve problemas de sono pois:'),
              Pergunta('A. Não conseguia dormir em 30 minutos:'),
              BotaoLista(0),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Pergunta('B. Despertou no meio da noite ou de madrugada:'),
              BotaoLista(1),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Pergunta('C.Teve que levantar à noite para ir ao banheiro:'),
              BotaoLista(2),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Pergunta('D. Não conseguia respirar de forma satisfatória:'),
              BotaoLista(3),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Pergunta('E. Tossia ou roncava alto:'),
              BotaoLista(4),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Pergunta('F. Sentia muito frio:'),
              BotaoLista(5),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Pergunta('G. Sentia muito calor:'),
              BotaoLista(6),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Pergunta('H. Tinha sonhos ruins:'),
              BotaoLista(7),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Pergunta('I. Tinha dor:'),
              BotaoLista(8),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Pergunta('J. Outra razão (por favor, descreva):'),
              BotaoLista(9),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Pergunta(
                  'K. Durante $art $per passad$art, com que freqüência você teve problemas com o sono por essa causa acima?:'),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              BotaoLista(10),
              Divider(height: size.height * 0.12, color: Colors.transparent),
            ],
          ),
        ),
      ),
    );
  }

  nextpage() {
    bool ve1 = false;
    bool ve2 = true;
    for (int i = 0; i < 10; i++) {
      if ((respostaBox[i] != null)) {
        ve1 = true;
      } else {
        ve2 = false;
      }
    }

    if ((ve1 == true && ve2 == true)) {
      Navigator.pushNamed(context, "/pageaqs3");
    } else {
      showCupertinoDialog(
        context: context,
        //barrierDismissible: false,
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
              "\nSelecione uma opção \npara cada situação!",
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
}
