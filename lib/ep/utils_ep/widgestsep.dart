import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:mediantar2/utils/global.dart';

// ignore: must_be_immutable
class PerguntaEp extends StatelessWidget {
  String texto = '';
  PerguntaEp(this.texto);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.92,
        height: size.height * (0.07 + ((fonte/3) * 0.01)),
        child: Scaffold(
            body: AutoSizeText(
          texto,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16 + fonte, color: Colors.black),
          maxLines: 3,
          minFontSize: 12,
        )));
  }
}

// ignore: must_be_immutable
class Situacao extends StatelessWidget {
  String texto = '';
  Situacao(this.texto);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.92,
        height: size.height * 0.06,
        child: Scaffold(
            body: AutoSizeText(
          texto,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 14 + fonte, color: Colors.black),
          maxLines: 2,
          minFontSize: 12,
        )));
  }
}

// ignore: must_be_immutable
class BotaoRespostaEpworth extends StatefulWidget {
  int i;
  BotaoRespostaEpworth(this.i);

  @override
  _BotaoRespostaEpworthState createState() => _BotaoRespostaEpworthState(this.i);
}

class _BotaoRespostaEpworthState extends State<BotaoRespostaEpworth> {
  int i;
  _BotaoRespostaEpworthState(this.i);

  String dropdownValue = 'Selecione uma opção';
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * (0.6 + (fonte/3)*0.1),
        height: MediaQuery.of(context).size.height * 0.05,
        child: DropdownButton<String>(
          value: dropdownValue,
          //elevation: 14,

          style: TextStyle(color: Colors.black, fontSize: 12 + fonte),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;

              if (newValue == 'Nunca Cochilaria') {
                setState(() {
                  respostaep[i] = 0;
                  confereep[i] = 'Nunca Cochilaria';
                });
              } else if (newValue == 'Pequena probabilidade de cochilar') {
                setState(() {
                  respostaep[i] = 1;
                  confereep[i] = 'Pequena probabilidade de cochilar';
                });
              } else if (newValue == 'Probabilidade média de cochilar') {
                setState(() {
                  respostaep[i] = 2;
                  confereep[i] = 'Probabilidade média de cochilar';
                });
              } else if (newValue == 'Grande probabilidade de cochilar') {
                setState(() {
                  respostaep[i] = 3;
                  confereep[i] = 'Grande probabilidade de cochilar';
                });
              } else if (newValue == 'Selecione uma opção') {
                setState(() {
                  respostaep[i] = null;
                });
              }
            });
          },
          items: <String>[
            'Selecione uma opção',
            'Nunca Cochilaria',
            'Pequena probabilidade de cochilar',
            'Probabilidade média de cochilar',
            'Grande probabilidade de cochilar'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ));
  }
}

// ignore: must_be_immutable
class BotaoNavegar extends StatelessWidget {
  Color cor;
  Function onclick;
  BotaoNavegar(this.cor, this.onclick);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 31),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: FloatingActionButton(
              heroTag: null,
              backgroundColor: cor,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            backgroundColor: cor,
            heroTag: null,
            onPressed: onclick,
            child: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ],
    );
  }
}