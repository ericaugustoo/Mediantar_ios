import 'package:flutter/material.dart';
import 'package:mediantar2/utils/widgetstelainfo.dart';

class Paginainfodds extends StatefulWidget {
  @override
  _PaginainfoddsState createState() => _PaginainfoddsState();
}

class _PaginainfoddsState extends State<Paginainfodds> {
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
              height: size.height * 0.030,
              thickness: 0.0,
              color: Colors.transparent),
          InfoForm(' . '),
         BotaoInfo('RESPONDER QUESTIONARIO AGORA', Colors.lightBlue[500],()=> nextpage()),
          Divider(
              height: size.height * 0.005,
              thickness: 0.0,
              color: Colors.transparent),
         BotaoInfo('SAIR', Colors.lightBlue[500],()=> previouspage()),
        ]))));
  }

  nextpage() {
                // Apenas para testar o vetor
                //for(int i=0;i<10;i++){
                 // if (coresbotao[i]==Colors.green){
                   // print('Opção escolhida $i');
                  //}
                //}
                Navigator.pushNamed(context, "/pagelogindds");
              }
              
  previouspage() {
    Navigator.pop(context);
  }
}