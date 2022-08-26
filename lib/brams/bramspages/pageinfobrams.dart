import 'package:flutter/material.dart';
import 'package:mediantar2/utils/widgetstelainfo.dart';

class Paginainfobrams extends StatefulWidget {
  @override
  _PaginainfobramsState createState() => _PaginainfobramsState();
}

class _PaginainfobramsState extends State<Paginainfobrams> {
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
          InfoForm(
              'A seguir está uma lista de palavras que descrevem sentimentos. Por favor, leia tudo atenciosamente. Em seguida assinale, em cada linha, o círculo que melhor descreve como você se sente agora. '),
          BotaoInfo('RESPONDER QUESTIONARIO AGORA',  Colors.lightBlue[300],()=> nextpage()),
          Divider(
              height: size.height * 0.005,
              thickness: 0.0,
              color: Colors.transparent),
          BotaoInfo('SAIR',  Colors.lightBlue[300],()=> previouspage()),
        ]))));
  }

  nextpage() {
                // Apenas para testar o vetor
                //for(int i=0;i<10;i++){
                 // if (coresbotao[i]==Colors.green){
                   // print('Opção escolhida $i');
                  //}
                //}
                Navigator.pushNamed(context, "/pageloginbrams");
              }
              
  previouspage() {
    Navigator.pop(context);
  }
}

