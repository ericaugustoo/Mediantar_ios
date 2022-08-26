import 'package:flutter/material.dart';
import 'package:mediantar2/utils/widgets_global.dart';
import 'package:auto_size_text/auto_size_text.dart';
//import 'package:mediantar2/utils/global.dart';

class Aqsinfo extends StatefulWidget {
  @override
  _AqsinfoState createState() => _AqsinfoState();
}

class _AqsinfoState extends State<Aqsinfo> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          MenuTodos('Escala de Pittsburgh para Avaliação da Qualidade do Sono',
              Colors.cyan[900]),
          Divider(
              height: size.height * 0.13,
              thickness: 0.0,
              color: Colors.transparent),
          Container(
            height: size.height * .50,
            width: size.width * .70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AutoSizeText(
                    "As questôes seguintes referem-se aos seus hábitos de sono durante a semana passada.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 15, color: Colors.black)),
                AutoSizeText(
                    "\nSuas respostas devem demonstrar, de forma mais precisa possível, o que aconteceu na maioria dos dias e noites apenas dessa semana.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 15, color: Colors.black)),
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.cyan[900]),
              color: Colors.transparent,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.all(10.0),
          ),
          Divider(
              height: size.height * 0.13,
              thickness: 0.0,
              color: Colors.transparent),
          BotaoInicio('INICIAR', Colors.cyan[900], () => nextpage()),
        ])));
  }

  nextpage() {
    // Apenas para testar o vetor
    //for(int i=0;i<10;i++){
    // if (coresbotao[i]==Colors.green){
    // print('Opção escolhida $i');
    //}
    //}
    /*dB5a = null;
    dB5b = null;
    dB6 = null;
    dB7 = null;
    dB8 = null;
    dB9 = null;
    dB10a = null;
    dB10b = null;*/
    Navigator.pushNamed(context, "/pag1");
  }
}
