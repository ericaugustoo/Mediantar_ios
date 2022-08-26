import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediantar2/ddsono/utils_diario/widgets_dds.dart';
import 'package:mediantar2/utils/global.dart';
import 'package:mediantar2/utils/widgets_global.dart';
import "package:intl/intl.dart";
import "dart:io";
import "package:fluttertoast/fluttertoast.dart";
import "package:downloads_path_provider/downloads_path_provider.dart";

class Paginadds1 extends StatefulWidget {
  @override
  _Paginadds1State createState() => _Paginadds1State();
}

class _Paginadds1State extends State<Paginadds1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MenuVoltar("Diário do sono",  Colors.lightBlue[500]),
            Divider(
                height: size.height * 0.025,
                thickness: 0.0,
                color: Colors.transparent),
            Pergunta('Que horas você foi dormir ontem?'),
            Divider(
                height: size.height * 0.0015,
                thickness: 0.0,
                color: Colors.transparent),
            Hora(0),
            Divider(
                height: size.height * 0.015,
                thickness: 0.0,
                color: Colors.transparent),
            Pergunta('A que horas você acha que pegou no sono?'),
            Divider(
                height: size.height * 0.0015,
                thickness: 0.0,
                color: Colors.transparent),
            Hora(1),
            Divider(
                height: size.height * 0.015,
                thickness: 0.0,
                color: Colors.transparent),
            Pergunta('A que horas você acordou hoje?'),
            Divider(
                height: size.height * 0.0015,
                thickness: 0.0,
                color: Colors.transparent),
            Hora(2),
            Divider(
                height: size.height * 0.015,
                thickness: 0.0,
                color: Colors.transparent),
            Pergunta('Você se lembra de ter acordado e dormido de novo?'),
            Container(
                height: size.height * 0.06,
                width: size.width * 0.9,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      BotaoRespostadds(
                          'NÃO', coresbotaodiario[0], () => onclick(0, 1, 0))
                    ])),
            Divider(
                height: size.height * 0.010,
                thickness: 0.0,
                color: Colors.transparent),
            Container(
                height: size.height * 0.06,
                width: size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    BotaoRespostadds(
                        'SIM', coresbotaodiario[1], () => onclick(0, 1, 1)),
                    Valor(1, 0)
                  ],
                )),
            Divider(
                height: size.height * 0.015,
                thickness: 0.0,
                color: Colors.transparent),
            Pergunta(
                'Como foi a qualidade do seu sono ontem? Arraste na reta abaixo.'),
            Divider(
                height: size.height * 0.015,
                thickness: 0.0,
                color: Colors.transparent),
            Container(
                height: size.height * 0.1,
                width: size.width * 0.90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: size.width * 0.3,
                      height: size.height * (0.02 + ((fonte/3) * 0.02) ),
                      
                       child:  AutoSizeText('Muito Mal', style: 
                            TextStyle( 
                              fontSize: 15 + fonte, color: Colors.black), textAlign: TextAlign.start, 
                              maxLines: 1,)),
                    
                      SizedBox(
                      width: size.width * 0.3,
                      height: size.height * (0.02 + ((fonte/3) * 0.02) ),
                      
                       child:  AutoSizeText('Muito Bem', style: 
                            TextStyle( 
                              fontSize: 15 + fonte, color: Colors.black, ), textAlign: TextAlign.end, 
                              maxLines: 1,)),
                  ],
                )),
                Retaarrastar(0),
            Divider(
                height: size.height * 0.05,
                thickness: 0.0,
                color: Colors.transparent),
            Pergunta('Como você acordou hoje?'),
            Divider(
                height: size.height * 0.015,
                thickness: 0.0,
                color: Colors.transparent),
            OutroBotaoResposta('Alguém me chamou', coresbotaodiario[4],
                () => onclick(4, 6, 4)),
            Divider(
                height: size.height * 0.015,
                thickness: 0.0,
                color: Colors.transparent),
            OutroBotaoResposta('Espontaneamente \n(sozinho)', coresbotaodiario[5],
                () => onclick(4, 6, 5)),
            Divider(
                height: size.height * 0.015,
                thickness: 0.0,
                color: Colors.transparent),
            OutroBotaoResposta(
                'Com despertador', coresbotaodiario[6], () => onclick(4, 6, 6)),
            Divider(
                height: size.height * 0.015,
                thickness: 0.0,
                color: Colors.transparent),
            Pergunta('Como você se sentiu ao acordar?'),
            Container(
                height: size.height * 0.1,
                width: size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: size.width * 0.3,
                      height: size.height * (0.02 + ((fonte/3) * 0.02) ),
                      
                       child:  AutoSizeText('Muito Mal', style: 
                            TextStyle( 
                              fontSize: 15 + fonte, color: Colors.black), textAlign: TextAlign.start,
                              maxLines: 1,)),
                      SizedBox(
                      width: size.width * 0.3,
                      height: size.height * (0.02 + ((fonte/3) * 0.02) ),
                      
                       child:  AutoSizeText('Muito Bem', style: 
                            TextStyle( 
                              fontSize: 15 + fonte, color: Colors.black), textAlign: TextAlign.end,
                              maxLines: 1,)),
                  ],
                )),
                Retaarrastar(1),
            Divider(
                height: size.height * 0.05,
                thickness: 0.0,
                color: Colors.transparent),
            Pergunta('Você dormiu a sesta ou cochilou durante o dia de ontem?'),
            Divider(
                height: size.height * 0.015,
                thickness: 0.0,
                color: Colors.transparent),
            Container(
                height: size.height * 0.06,
                width: size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    BotaoRespostadds(
                        'NÃO', coresbotaodiario[2], () => onclick(2, 3, 2))
                  ],
                )),
                Divider(
                height: size.height * 0.010,
                thickness: 0.0,
                color: Colors.transparent),
            Container(
                height: size.height * 0.06,
                width: size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    BotaoRespostadds(
                        'SIM', coresbotaodiario[3], () => onclick(2, 3, 3)),
                    Valor(3, 1)
                  ],
                )),
            Divider(
                height: size.height * 0.015,
                thickness: 0.0,
                color: Colors.transparent),
            Sedormiu(3),
            Divider(
                height: size.height * 0.015,
                thickness: 0.0,
                color: Colors.transparent),

                Divider( height: size.height * 0.018 , thickness: 0.0, color: Colors.transparent ),      
          
          
/*          TextFormField(
    
//                cursorHeight: MediaQuery.of(context).size.height * 0.1,
  //              autofocus: true,
                keyboardType: TextInputType.multiline,
                controller: ddsobservacao,
                maxLines: 4,
                style: new TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                                
                                labelText: "Observações:",
                                labelStyle: TextStyle( color: Colors.lightBlue[300]),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black),
                    
                              ),
                  prefixIcon: Icon(Icons.person, color: Colors.black),
                  
                
                  ),


              ),*/
              
              
             Divider(height: size.height * 0.05,  color: Colors.transparent),

          BotaoInicio('GRAVAR', Colors.lightBlue[500], () => nextpage()),
          ],
        ),
      ),
    ));
  }

  onclick(int inicio, int fim, int pos) {
    setState(() {
      for (int i = inicio; i <= fim; i++) {
        if (i == pos) {
          coresbotaodiario[i] = Colors.lightBlue[500];
        } else {
          coresbotaodiario[i] = corbotaodiario;
        }
      }
    });

    // print('ok');
  }

  /*nextpage() {
    // Apenas para testar o vetor
    //for(int i=110;i<30;i++){
    // if (coresbotao[i]==Colors.green){
    // print('Opção escolhida $i');
    //}
    //}
    Navigator.pushNamed(context, "/results");
  }*/
  simounao() {
    if (coresbotaodiario[0] == Colors.lightBlue[500]) {
        ddsresposta[0] = "Não";
      }
      if (coresbotaodiario[1] == Colors.lightBlue[500]) {
        ddsresposta[0] = "Sim";
      }
      if (coresbotaodiario[2] == Colors.lightBlue[500]) {
        ddsresposta[1] = "Não";
      }
      if (coresbotaodiario[3] == Colors.lightBlue[500]) {
        ddsresposta[1] = "Sim";
      }
      if (coresbotaodiario[4] == Colors.lightBlue[500]) {
        ddsresposta[2] = "Alguém me chamou.";
      }
      if (coresbotaodiario[5] == Colors.lightBlue[500]) {
        ddsresposta[2] = "Espontaneamente (Sozinho).";
      }
      if (coresbotaodiario[6] ==  Colors.lightBlue[500]) {
        ddsresposta[2] = "Com despertador.";
      }

  }

 onclick2() {
    
   simounao();

    String conteudo, nomearq;
    conteudo = 
        "Nome do voluntário   : $nome1\n" +

        "Local (Grupo)        : $local1\n\n" +
    
        
        "DIÁRIO DO SONO\n\n"
        
        "Hora                 ; ${horaresposta[0]}\n" +
        "Hora                 ; ${horaresposta[1]}\n" +
        "Hora                 ; ${horaresposta[2]}\n" +
        "Acordou              ; ${ddsresposta[0]}\n" +
        "Número de vezes:     ; ${valor[0]}\n" +
        "Tamanho da reta:     ; ${tamanhoreta[0]}\n"
        "Como acordou:        ; ${ddsresposta[2]}\n"
        "Tamanho da reta:     ; ${tamanhoreta[1]}\n"
        "Sesta ou cochilo:    ; ${ddsresposta[1]}\n"
        "Número de vezes:     ; ${valor[1]}\n"
        "De: ${horaresposta[3]} às ${horaresposta[4]}\n"
        "De: ${horaresposta[5]} às ${horaresposta[6]}\n"
        ;
    nomearq =
        DateFormat("sono: dd-MM-yyyy – kk-mm-ss").format(DateTime.now()) + ".txt";
    // print("ok");
     save(nomearq,conteudo);
     

    
  }

   nextpage() {
     simounao();
     bool v1 = false;
     bool v11 = false;
     bool v12 = false;
     bool v13 = false;
     bool v2 = false;
     bool v3 = false;
     bool v4 = false;
    String msgsimounao = '';
    String msghoras1 = '';
    String msghoras2 = '';


     //String mensagemBotao = "Você deixou de selecionar algum botão. Verifique suas respostas e tente novamente.";
    
// Confere as horas

    if(horaresposta[0] != null && horaresposta[1] != null && horaresposta[2] != null) {
      v3 = true;
      msghoras1 = '';
    }
    else {
      v3 = false;
      msghoras1 =  '- Alterar uma das 3 primeiras horas.';
    }
  
    if ((coresbotaodiario[3] == Colors.lightBlue[500]) && (horaresposta[3] != null && horaresposta[4] != null && horaresposta[5] != null && horaresposta[6] != null)) {
      v4 = true;
      msghoras2 = '';
    }
    else if (coresbotaodiario[2] == Colors.lightBlue[500]) {
      v4 = true;
    }
    else {
      msghoras2 = '- Alterar uma das 4 últimas horas.';
    }

// Conferem os botões
  for (int i = 0; i < 2; i++) {
    if ( coresbotaodiario[i] == Colors.lightBlue[500]) {
        v11 = true;
        
      }
  }

  for (int i = 2; i < 4; i++) {
    if ( coresbotaodiario[i] == Colors.lightBlue[500]) {
        v12 = true;
      }
   
  }

  for (int i = 4; i < 7; i++) {
    if ( coresbotaodiario[i] == Colors.lightBlue[500]) {
        v13 = true;
      }
  }

  if (v11 && v12 && v13) {
    v1 = true;
    msgsimounao = '';
  }
  else {
    msgsimounao = '- Selecionar um dos 7 botões.';
  }

  /*showAlertDialog() {
  // configura os botões
  Widget confirmo = FlatButton(
    child: Text("Confirmo"),
    onPressed: () {
        onclick2();
        },
  );
  Widget naoConfirmo = FlatButton(
    child: Text("Não confirmo"),
    onPressed: () {
     setState(() {
                Navigator.of(context).pop();
       });
    },
  );
  
  // configura o  AlertDialog
  AlertDialog alert = AlertDialog(
    //title: Text("Aviso"),
    content: AutoSizeText(
    
      'Em uma das retas, voc',
      style: TextStyle(fontSize: 18 + fonte, fontWeight: FontWeight.bold),
      maxLines: 4,
    ),
    actions: [
      confirmo,
      naoConfirmo,
    ],
  );
  // exibe o dialogo
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
    
} */

// Confere a reta
   if (tamanhoreta[0] != 0 && tamanhoreta[1] != 0) {
     
     v2 = true;
     //showAlertDialog(); //COLOCAR SE AS OUTRAS ESTIVEREM VÁLIDAS
   }
   else {
     v2 = false;
   }
  
  
  
   if ((v11 && v12 && v13) && v2) {
    erro = "Verifique suas respostas. Existe(m) pergunta(s) sem resposta(s).";
   }


  if(v1 && !v2 && v3 && v4) {
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
              Text("Atenção"),
            ]),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [ 
                        Text(
                              '\nEm uma das retas você selecionou a opção "Muito ruim". Você confirma sua resposta?',

                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.black, fontSize: 14 + fonte),
                            
                       ),

             ],
             ),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Não confirmo", style: TextStyle(color: Colors.blueAccent, fontSize: 14)),
              ),
              FlatButton(
                onPressed: () {
                  onclick2();
                },
                child: Text("Confirmo", style: TextStyle(color: Colors.blueAccent, fontSize: 14)),
              ),
              
            ]), );
  }
  
  if (v1 && v2 && v3 && v4) {
    onclick2();
  }

   if (!v1 || !v3 || !v4) {

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
              Text("Atenção"),
            ]),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [ 
                        Text(
                              "\nVocê deixou de fazer o(s) \nseguinte(s) ponto(s): ",

                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.black),
                            
                       ),
                        Text(
                              "\n" + msghoras1 + 
                              "\n" + msgsimounao + 
                              "\n" + msghoras2,
                              textAlign: TextAlign.start,
                              style: (TextStyle(color: Colors.red,)),
                        ),

             ],
             ),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Ok", style: TextStyle(color: Colors.blueAccent)),
              ),
            ]),
      );
    }

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

