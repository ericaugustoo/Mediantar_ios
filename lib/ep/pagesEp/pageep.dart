import 'dart:io';
import "package:intl/intl.dart";
import "package:downloads_path_provider/downloads_path_provider.dart";
import "package:fluttertoast/fluttertoast.dart";
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mediantar2/ep/utils_ep/widgestsep.dart';
import 'package:mediantar2/utils/global.dart';
import 'package:mediantar2/utils/widgets_global.dart';

class Paginaep1 extends StatefulWidget {
  @override
  _Paginaep1State createState() => _Paginaep1State();
}

class _Paginaep1State extends State<Paginaep1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        floatingActionButton: BotaoNavegar(Colors.lightBlue[700], () => nextpage()),
        body: SingleChildScrollView(
            child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
              MenuTodos('QUESTIONÁRIO DE EPWORTH (ESS-BR)', Colors.lightBlue[700]),
              Divider(
                  height: size.height * 0.030,
                  thickness: 0.0,
                  color: Colors.transparent),
              PerguntaEp(
                  'QUAL A PROBABILIDADE DE VOCÊ COCHILAR OU DORMIR NAS SEGUINTES SITUAÇÕES?'),
              Divider(
                  height: size.height * 0.030,
                  thickness: 0.0,
                  color: Colors.transparent),
              Situacao('1. Sentado e lendo'),
              Divider(
                  height: size.height * 0.015,
                  thickness: 0.0,
                  color: Colors.transparent),
              BotaoRespostaEpworth(0),
              Divider(
                  height: size.height * 0.030,
                  thickness: 0.0,
                  color: Colors.transparent),
              Situacao('2. Assistindo televisão'),
              Divider(
                  height: size.height * 0.015,
                  thickness: 0.0,
                  color: Colors.transparent),
              BotaoRespostaEpworth(1),
              Divider(
                  height: size.height * 0.015,
                  thickness: 0.0,
                  color: Colors.transparent),
              Situacao(
                  '3. Sentado, quieto, em um lugar público (por exemplo: em um teatro, reunião ou palestra)'),
              Divider(
                  height: size.height * 0.015,
                  thickness: 0.0,
                  color: Colors.transparent),
              BotaoRespostaEpworth(2),
              Divider(
                  height: size.height * 0.015,
                  thickness: 0.0,
                  color: Colors.transparent),
              Situacao(
                  '4. Andando de carro por uma hora sem parar, como passageiro'),
              Divider(
                  height: size.height * 0.015,
                  thickness: 0.0,
                  color: Colors.transparent),
              BotaoRespostaEpworth(3),
              Divider(
                  height: size.height * 0.015,
                  thickness: 0.0,
                  color: Colors.transparent),
              Situacao(
                  '5. Ao deitar-se a tarde para descansar, quando possível'),
              Divider(
                  height: size.height * 0.015,
                  thickness: 0.0,
                  color: Colors.transparent),
              BotaoRespostaEpworth(4),
              Divider(
                  height: size.height * 0.015,
                  thickness: 0.0,
                  color: Colors.transparent),
              Situacao('6. Sentado conversando com alguém'),
              Divider(
                  height: size.height * 0.015,
                  thickness: 0.0,
                  color: Colors.transparent),
              BotaoRespostaEpworth(5),
              Divider(
                  height: size.height * 0.015,
                  thickness: 0.0,
                  color: Colors.transparent),
              Situacao(
                  '7. Sentado quieto após o almoço (sem consumo de bebida alcoólica)'),
              Divider(
                  height: size.height * 0.015,
                  thickness: 0.0,
                  color: Colors.transparent),
              BotaoRespostaEpworth(6),
              Divider(
                  height: size.height * 0.015,
                  thickness: 0.0,
                  color: Colors.transparent),
              Situacao('8. Em um carro parado no trânsito por alguns minutos'),
              Divider(
                  height: size.height * 0.015,
                  thickness: 0.0,
                  color: Colors.transparent),
              BotaoRespostaEpworth(7),
              Divider(height: size.height * 0.07, color: Colors.transparent),
            ]))));
  

  }

  nextpage() {
    
    bool ve1 = false;
    bool ve2 = true;
    for (int i = 0; i < 7; i++) {
      if ((respostaep[i] != null)) {
        ve1 = true;
      } else {
        ve2 = false;
      }
    }

    if ((ve1 == true && ve2 == true)) {
      onclick();
    } else {
      showCupertinoDialog(
        context: context,
        //barrierDismissible: false,
        builder: (_) => CupertinoAlertDialog(
            title: Row(children: [
              Icon(
                Icons.error_outline,
                color: Colors.red,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Text("AVISO"),
            ]),
            content: Text(
              "\nSelecione uma opção \npara cada situação!",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueAccent),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Ok"),
              ),
            ]),
      );
    }
  }


onclick() {
   
    String conteudo, nomearq;
    conteudo = 
        
        "Nome do voluntário   : $nome1\n" +

        "Local (Grupo)        : $local1\n\n" +


        "RESPOSTAS: \n\n"

        "1. Sentado e lendo:                                                                               \n   | ${confereep[0]}\n\n" +
        "2. Assistindo televisão:                                                                          \n   | ${confereep[1]}\n\n" +
        "3. Sentado, quieto, em um lugar público (por exemplo: em um teatro, reunião ou palestra):         \n   | ${confereep[2]}\n\n" +
        "4. Andando de carro por uma hora sem parar, como passageiro:                                      \n   | ${confereep[3]}\n\n" +
        "5. Ao deitar-se a tarde para descansar, quando possível:                                          \n   | ${confereep[4]}\n\n" +
        "6. Sentado conversando com alguém:                                                                \n   | ${confereep[5]}\n\n" + 
        "7. Sentado quieto após o almoço (sem consumo de bebida alcoólica):                                \n   | ${confereep[6]}\n\n" +
        "8. Em um carro parado no trânsito por alguns minutos:                                             \n   | ${confereep[7]}\n\n" 

        ;
    nomearq =
        DateFormat("-Epworth--dd-MM-yyyy – kk-mm-ss").format(DateTime.now()) + ".txt";
    // print("ok");
     save(nomearq,conteudo);
     

    
  }

   Future<void> save(String filename, String content) async {
    final directory = await DownloadsPathProvider.downloadsDirectory;
    final path = "${directory.path}/$filename";
    final file = File(path);
    try {
      await file.writeAsString(content);
       Fluttertoast.showToast(
          gravity: ToastGravity.CENTER,
          msg: "Gravação realizada com sucesso",
          backgroundColor: Colors.blue,
          textColor: Colors.white,
          fontSize: 15.0);
          Navigator.pushNamedAndRemoveUntil(
          context, "/telainicial", (route) => false);
    } on FileSystemException {
      Fluttertoast.showToast(
          gravity: ToastGravity.CENTER,
          msg: "Gravação não permitida",
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 15.0);
    }
  }
}