import 'package:flutter/material.dart';
import 'package:mediantar2/utils/widgetstelainfo.dart';
import 'package:mediantar2/utils/global.dart';

class Paginainfoaqs extends StatefulWidget {
  @override
  _PaginainfoaqsState createState() => _PaginainfoaqsState();
}

class _PaginainfoaqsState extends State<Paginainfoaqs> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
          ImagemInfo('assets/images/Aqs.jpg'),
          Divider(
              height: size.height * 0.030,
              thickness: 0.0,
              color: Colors.transparent),
          TituloForm(
              "Escala Pittsburgh para avaliação da qualidade do sono - ACAMPAMENTO"),
          Divider(
              height: size.height * 0.030,
              thickness: 0.0,
              color: Colors.transparent),
          InfoForm(
              ' As questões seguintes referem-se aos seus hábitos de sono durante $art $per  passad$art. Suas respostas devem demonstrar, de forma mais precisa possível, o que aconteceu na maioria dos dias e noites apenas dess$art1 $per. '),
          BotaoInfo('RESPONDER QUESTIONARIO AGORA', Colors.lightBlue[900],
              () => nextpage()),
          Divider(
              height: size.height * 0.005,
              thickness: 0.0,
              color: Colors.transparent),
          BotaoInfo('SAIR', Colors.lightBlue[900], () => previouspage()),
        ]))));
  }

  nextpage() {
    // Apenas para testar o vetor
    //for(int i=0;i<10;i++){
    // if (coresbotao[i]==Colors.green){
    // print('Opção escolhida $i');
    //}
    //}

    Navigator.pushNamed(context, "/pageloginaqs");
  }

  previouspage() {
    Navigator.pop(context);
  }
}
