import 'package:flutter/material.dart';
import 'package:mediantar2/utils/global.dart';
import 'package:mediantar2/utils/widgetstelainfo.dart';
import 'package:mediantar2/utils/widgets_global.dart';

class Paginaloginbrams extends StatefulWidget {
  @override
  _PaginaloginbramsState createState() => _PaginaloginbramsState();
}

class _PaginaloginbramsState extends State<Paginaloginbrams> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView( 
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
          ImagemInfo('assets/images/Brams.jpg'),
          Divider(
              height: size.height * 0.030,
              thickness: 0.0,
              color: Colors.transparent),
          TituloForm("Escala Brasileira de Humor (BRAMS)"),
          Divider(
              height: size.height * 0.030,
              thickness: 0.0,
              color: Colors.transparent),

          DadosForm(),
          Divider(height: size.height * 0.07,  color: Colors.transparent),
          BotaoInfo('RESPONDER QUESTIONARIO AGORA',  Colors.lightBlue[300],()=> nextpage()),
          Divider(
              height: size.height * 0.005,
              thickness: 0.0,
              color: Colors.transparent),
          BotaoInfo('SAIR',  Colors.lightBlue[300],()=> previouspage()),
        ]))));
  }

  nextpage() {
                if (key.currentState.validate()) {
                  // Sem erros na validação
                  key.currentState.save();
                  Navigator.pushNamed(context, "/pagebrams1");
                } else {
                  // erro de validação
                  validate = true;         
                }
              }
              
  previouspage() {
    Navigator.pop(context);
  }
}

