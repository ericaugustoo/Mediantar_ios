import 'package:flutter/material.dart';
import 'package:mediantar2/utils/global.dart';
import 'package:mediantar2/utils/widgetstelainfo.dart';
import 'package:mediantar2/utils/widgets_global.dart';
 
class Paginaloginaqs extends StatefulWidget {
  @override
  _PaginaloginaqsState createState() => _PaginaloginaqsState();
}

class _PaginaloginaqsState extends State<Paginaloginaqs> {
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

              DadosForm(),  

               Divider(height: size.height * 0.07,  color: Colors.transparent),
          BotaoInfo('RESPONDER QUESTIONARIO AGORA', Colors.lightBlue[900],()=> nextpage()),
          Divider(
              height: size.height * 0.005,
              thickness: 0.0,
              color: Colors.transparent),
          BotaoInfo('SAIR', Colors.lightBlue[900],()=> previouspage()),
        ]))));
  }


  nextpage() {
    if (key.currentState.validate()) {
      // Sem erros na validação
      key.currentState.save();
      
      Navigator.pushNamed(context, "/pageaqs1");
    } else {
      // erro de validação
        validate = true;
    
    }
    
  }

  previouspage() {
    Navigator.pop(context);
  }
}
