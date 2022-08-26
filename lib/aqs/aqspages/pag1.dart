import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediantar2/aqs/utils_aqs/widgets_aqs.dart';
import 'package:mediantar2/utils/global.dart';
import 'package:mediantar2/utils/widgets_global.dart';

class Paginaaqs1 extends StatefulWidget {
  @override
  _Paginaaqs1State createState() => _Paginaaqs1State();
}

class _Paginaaqs1State extends State<Paginaaqs1> {
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
              MenuTodos('Escreva a melhor opção', Colors.lightBlue[900]),
              Divider(height: size.height * 0.06, color: Colors.transparent),
              Pergunta(
                '1. Durante $art $per passad$art, a que horas você, habitualmente, foi dormir?',
              ),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              HoraMinutoPit(0),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Pergunta(
                '2. Durante $art $per passad$art, quanto tempo (em minutos) habitualmente você levou para adormecer a cada noite?',
              ),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Minuto(),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Pergunta(
                '3. Durante $art $per passad$art, a que horas você habitualmente despertou?',
              ),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              HoraMinutoPit(1),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              PerguntaM(
                '4. Durante $art $per passad$art, quantas horas de sono realmente você teve a noite? (Número de horas de sono pode diferir do número de horas que você permaneceu na cama)',
              ),
              Divider(height: size.height * 0.033, color: Colors.transparent),
              Hora(),
              Divider(height: size.height * 0.12, color: Colors.transparent),
            ],
          ),
        ),
      ),
    );
  }

  nextpage() {
    if (horarespostapit[0] != null &&
        horarespostapit[1] != null &&
        hora != 0 &&
        minuto != 0)
      Navigator.pushNamed(context, "/pageaqs2");
    else {
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
                    "\nCuidado,\nHorários inválidos!",
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
                  ]));
    }
  }
}
