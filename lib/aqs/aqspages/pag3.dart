import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediantar2/aqs/utils_aqs/widgets_aqs.dart';
import 'package:mediantar2/utils/global.dart';
import 'package:mediantar2/utils/widgets_global.dart';

class Paginaaqs3 extends StatefulWidget {
  @override
  _Paginaaqs3State createState() => _Paginaaqs3State();
}

class _Paginaaqs3State extends State<Paginaaqs3> {
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
                  '6. Durante $art $per passad$art, como você avaliaria a qualidade geral do seu sono?'),
              new DropdownButton(
                hint: dB6 == null
                    ? Text('Selecione', style: TextStyle(fontSize: 15 + fonte))
                    : Text(
                        dB6,
                        style: TextStyle(color: Colors.black),
                      ),
                iconSize: 30.0,
                style: TextStyle(color: Colors.black, fontSize: 15 + fonte),
                items: ['Muito Bom', 'Bom', 'Ruim', 'Muito Ruim'].map(
                  (val) {
                    return DropdownMenuItem<String>(
                      value: val,
                      child: Text(
                        val,
                        style: TextStyle(fontSize: 15 + fonte),
                      ),
                    );
                  },
                ).toList(),
                onChanged: (val) {
                  setState(
                    () {
                      dB6 = val;
                    },
                  );
                },
              ),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              PerguntaM(
                  '7. Durante $art $per passad$art, com que frequência você tomou medicamento (prescrito ou por conta própria) para ajudar no sono?'),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              BotaoLista(11),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              PerguntaM(
                  '8. Durante $art $per passad$art, com que frequência você teve dificuldades em permanecer acordado enquanto estava dirigindo,fazendo refeições, ou envolvido em atividades sociais?'),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              BotaoLista(12),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              PerguntaM(
                  '9.  Durante $art $per passad$art, quanto foi problemático para você manter-se suficientemente entusiasmada ao realizar suas atividades?'),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              BotaoLista(13),
              Divider(height: size.height * 0.1, color: Colors.transparent),
            ],
          ),
        ),
      ),
    );
  }

  nextpage() {
    bool ve1 = false;
    bool ve2 = true;
    for (int i = 11; i <= 12; i++) {
      if ((respostaBox[i] != null)) {
        ve1 = true;
      } else {
        ve2 = false;
      }
    }

    if ((ve1 == true && ve2 == true && dB6 != null)) {
      Navigator.pushNamed(context, "/pageaqs4");
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
