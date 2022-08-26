import 'package:flutter/material.dart';
import 'package:mediantar2/utils/global.dart';
import 'package:mediantar2/utils/widgets_global.dart';
import 'package:mediantar2/utils/widgetstelainfo.dart';

class Paginalogindds extends StatefulWidget {
  @override
  _PaginaloginddsState createState() => _PaginaloginddsState();
}

class _PaginaloginddsState extends State<Paginalogindds> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
          ImagemInfo('assets/images/DiarioDoSono.jpg'),
          Divider(
              height: size.height * 0.030,
              thickness: 0.0,
              color: Colors.transparent),
          TituloForm("Diário do Sono"),
          Divider(
              height: size.height * 0.00,
              thickness: 0.0,
              color: Colors.transparent),
        
              DadosForm(),
              
              
           Divider(height: size.height * 0.07,  color: Colors.transparent),

         BotaoInfo('RESPONDER QUESTIONARIO AGORA', Colors.lightBlue[500],()=> nextpage()),
          Divider(
              height: size.height * 0.005,
              thickness: 0.0,
              color: Colors.transparent),
         BotaoInfo('SAIR', Colors.lightBlue[500],()=> previouspage()),
        ]))));
  }

  nextpage() {
           
      if (key.currentState.validate()) {
      // Sem erros na validação
      key.currentState.save();
      Navigator.pushNamed(context, "/pagedds1");
    } else {
      // erro de validação
        validate = true;
    
    }
              }
              
  previouspage() {
    Navigator.pop(context);
  }

  
  

  
}
