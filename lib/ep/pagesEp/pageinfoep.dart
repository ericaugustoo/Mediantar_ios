import 'package:flutter/material.dart';
import 'package:mediantar2/utils/widgetstelainfo.dart';


class Paginainfoep extends StatefulWidget {
  @override
  _PaginainfoepState createState() => _PaginainfoepState();
}

class _PaginainfoepState extends State<Paginainfoep> {
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
          InfoForm(
              'Ao responder, mesmo que o(a) Sr.(a) não tenha feito algumas dessas coisas recentemente, tente imaginar como elas poderiam afetá-lo. '),
          BotaoInfo('RESPONDER QUESTIONARIO AGORA', Colors.lightBlue[700],()=> nextpage()),
          Divider(
              height: size.height * 0.005,
              thickness: 0.0,
              color: Colors.transparent),
          BotaoInfo('SAIR', Colors.lightBlue[700],()=> previouspage()),
        ]))));
  }

nextpage() {
                // Apenas para testar o vetor
                //for(int i=0;i<10;i++){
                 // if (coresbotao[i]==Colors.green){
                   // print('Opção escolhida $i');
                  //}
                //}
                
                Navigator.pushNamed(context, "/pageloginep");
              }
            
previouspage() {
    Navigator.pop(context);
  }
}