import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mediantar2/utils/global.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:numberpicker/numberpicker.dart';

// ignore: must_be_immutable
class BotaoLista extends StatefulWidget {
  int i;
  BotaoLista(this.i);
  @override
  _BotaoListaState createState() => _BotaoListaState(this.i);
}

class _BotaoListaState extends State<BotaoLista> {
  _BotaoListaState(this.i);
  int i;

  String dropdownValue = 'Selecione uma opção';
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * (0.6 + (fonte / 3) * 0.1),
        height: MediaQuery.of(context).size.height * 0.05,
        child: DropdownButton<String>(
            hint: respostaBox[i] == null
                ? Text('Selecione uma opção',
                    style: TextStyle(fontSize: 15 + fonte))
                : Text(
                    respostaBox[i],
                    style: TextStyle(color: Colors.black),
                  ),
            iconSize: 30.0,
            style: TextStyle(color: Colors.black, fontSize: 15 + fonte),
            items: [
              'Nunca',
              'Menos de 1 vez por $per',
              '1 ou 2 vezes por $per',
              '3 ou mais vezes por $per'
            ].map(
              (val) {
                return DropdownMenuItem<String>(
                  value: val,
                  child: Text(val, style: TextStyle(fontSize: 15 + fonte)),
                );
              },
            ).toList(),
            onChanged: (val) {
              setState(
                () {
                  respostaBox[i] = val;
                },
              );
            }));
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

//ignore: must_be_immutable
class BotaoResposta9 extends StatelessWidget {
  Color cor;
  Function onclick;
  String texto = "";
  BotaoResposta9(this.texto, this.cor, this.onclick);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.70,
        height: MediaQuery.of(context).size.height * 0.08,
        child: RaisedButton(
          color: cor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: BorderSide(
                  color: Colors.blue, width: 1.0, style: BorderStyle.solid)),
          onPressed: onclick,
          child: AutoSizeText(
            texto,
            style: TextStyle(fontSize: 12 + fonte, color: Colors.black),
            maxLines: 2,
          ),
        ));
  }
}

//perguntas
// ignore: must_be_immutable
class Pergunta extends StatelessWidget {
  String texto = '';
  Pergunta(this.texto);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.92,
        height: size.height * (0.07 + ((fonte / 3) * 0.03)),
        child: Scaffold(
            body: AutoSizeText(
          texto,
          //textAlign: TextAlign.justify,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15 + fonte,
              color: Colors.black),
          maxLines: 4,
        )));
  }
}

// ignore: must_be_immutable
class PerguntaM extends StatelessWidget {
  String texto = '';
  PerguntaM(this.texto);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.92,
        height: size.height * (0.12 + ((fonte / 3) * 0.05)),
        child: Scaffold(
            body: AutoSizeText(
          texto,
          // textAlign: TextAlign.justify,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15 + fonte,
              color: Colors.black),
          maxLines: 6,
        )));
  }
}

//Selecao de hora
// ignore: must_be_immutable
class HoraMinutoPit extends StatefulWidget {
  int i;
  HoraMinutoPit(this.i);

  @override
  _HoraMinutoPitState createState() => _HoraMinutoPitState(this.i);
}

class _HoraMinutoPitState extends State<HoraMinutoPit> {
  TimeOfDay time = TimeOfDay.now();
  TimeOfDay horabotaopit = TimeOfDay.now();

  _HoraMinutoPitState(this.i);
  int i;

  Future<Null> selectTime24Hour(BuildContext context) async {
    horabotaopit = await showTimePicker(
        context: context,
        initialTime: horabotaopit,
        builder: (BuildContext context, Widget child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
            //ThemeData(
            //primaryColor: Colors.pink, accentColor: Colors.pink[500]),
            child: child,
          );
        });
    if (horabotaopit != null)
      setState(() {
        horarespostapit[i] = horabotaopit;
        horabotaopit = horabotaopit;

        //print(horarespostapit[i]);
      });
    else
      setState(() {
        horabotaopit = time;
        horaresposta[i] = null;
      });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.5,
      height: size.height * 0.05,
      child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                  color: Colors.white, width: 1.0, style: BorderStyle.solid)),
          color: Colors.white,
          onPressed: () {
            selectTime24Hour(context);
          },
          child: AutoSizeText(
            '${horabotaopit.hour}:${horabotaopit.minute}',
            style: TextStyle(fontSize: 15 + fonte, color: Colors.black),
            maxLines: 1,
          )),
    );
  }
}

class Minuto extends StatefulWidget {
  @override
  _MinutoState createState() => _MinutoState();
}

class _MinutoState extends State<Minuto> {
  NumberPicker integerInfiniteNumberPicker;

  Future _showInfIntDialog() async {
    await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        return new NumberPickerDialog.integer(
          minValue: 0,
          maxValue: 99,
          initialIntegerValue: minuto,
        );
      },
    ).then((num value) {
      if (value != null) {
        setState(() => minuto = value);
        integerInfiniteNumberPicker.animateInt(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.5,
        height: size.height * 0.05,
        child: RaisedButton(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                  color: Colors.white, width: 1.0, style: BorderStyle.solid)),
          child: AutoSizeText(
            '$minuto   Minutos',
            style: TextStyle(fontSize: 15 + fonte, color: Colors.black),
            maxLines: 1,
          ),
          onPressed: () {
            _showInfIntDialog();
            // print('$hora');
          },
        ));
  }
}

class Hora extends StatefulWidget {
  @override
  _HoraState createState() => _HoraState();
}

class _HoraState extends State<Hora> {
  NumberPicker integerInfiniteNumberPicker;
  Future _showInfIntDialog() async {
    await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        return new NumberPickerDialog.integer(
          minValue: 0,
          maxValue: 99,
          initialIntegerValue: hora,
        );
      },
    ).then((num value) {
      if (value != null) {
        setState(() => hora = value);
        integerInfiniteNumberPicker.animateInt(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.5,
        height: size.height * 0.05,
        child: RaisedButton(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                  color: Colors.white, width: 1.0, style: BorderStyle.solid)),
          child: AutoSizeText(
            '$hora  Horas',
            style: TextStyle(fontSize: 15 + fonte, color: Colors.black),
            maxLines: 1,
          ),
          onPressed: () {
            _showInfIntDialog();
            // print('$hora');
          },
        ));
  }
}
