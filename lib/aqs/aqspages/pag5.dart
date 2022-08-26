import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediantar2/aqs/utils_aqs/widgets_aqs.dart';
import 'package:mediantar2/utils/global.dart';
import 'package:mediantar2/utils/widgets_global.dart';

class Paginaaqs5 extends StatefulWidget {
  @override
  _Paginaaqs5State createState() => _Paginaaqs5State();
}

class _Paginaaqs5State extends State<Paginaaqs5> {
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
                  '11. Se você divide com alguém o quarto ou a cama, pergunte a ele(a) com qual frequência, durante $art últim$art $per, você tem apresentado:'),
              Pergunta('A. Ronco alto'),
              BotaoLista(14),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Pergunta('B. Longas pausas na respiração enquanto dormia'),
              BotaoLista(15),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Pergunta('C. Movimentos de chutar ou sacudir as pernas'),
              BotaoLista(16),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Pergunta(
                  'D.  Episódios de desorientação ou confusão durante a noite'),
              BotaoLista(17),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Pergunta(
                  'E. Outras inquietações durante o sono (por favor, descreva):'),
              BotaoLista(18),
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
    for (int i = 14; i < 19; i++) {
      if ((respostaBox[i] != null)) {
        ve1 = true;
      } else {
        ve2 = false;
      }
    }

    if ((ve1 == true && ve2 == true)) {
      Navigator.pushNamed(context, "/fimaqs");
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
