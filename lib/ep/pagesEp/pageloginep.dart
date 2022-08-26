import 'package:flutter/material.dart';
import 'package:mediantar2/utils/widgets_global.dart';
import 'package:mediantar2/utils/global.dart';
import 'package:mediantar2/utils/widgetstelainfo.dart';


class Paginaloginep extends StatefulWidget {
  @override
  _PaginaloginepState createState() => _PaginaloginepState();
}

class _PaginaloginepState extends State<Paginaloginep> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
          ImagemInfo('assets/images/Epworth.jpg'),
          Divider(
              height: size.height * 0.030,
              thickness: 0.0,
              color: Colors.transparent),
          TituloForm("Questionário Epworth - (ESS - BR)"),
          Divider(
              height: size.height * 0.030,
              thickness: 0.0,
              color: Colors.transparent),

            DadosForm(),          
            Divider(height: size.height * 0.07,  color: Colors.transparent),

          BotaoInfo('RESPONDER QUESTIONARIO AGORA', Colors.lightBlue[700],()=> nextpage()),
          Divider(
              height: size.height * 0.005,
              thickness: 0.0,
              color: Colors.transparent),
          BotaoInfo('SAIR', Colors.lightBlue[700],()=> previouspage()),
        ]))));
  }

nextpage() {
                
                if (key.currentState.validate()) {
                  // Sem erros na validação
                  key.currentState.save();
                  Navigator.pushNamed(context, "/pageep1");
                } else {
                  // erro de validação
                    validate = true;
                
                }
                
               
                
              }
            
previouspage() {
    Navigator.pop(context);
  }
}