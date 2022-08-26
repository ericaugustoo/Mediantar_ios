import "dart:io";
import "package:intl/intl.dart";
import "package:mediantar2/utils/global.dart";
import 'package:mediantar2/utils/widgets_global.dart';
import "package:flutter/material.dart";
import "package:fluttertoast/fluttertoast.dart";
import "package:downloads_path_provider/downloads_path_provider.dart";


class Resultsbrams extends StatefulWidget {
  @override
  _ResultsbramsState createState() => _ResultsbramsState();
}

class _ResultsbramsState extends State<Resultsbrams> {
  @override
  Widget build(BuildContext context) {
    int k = 0;
   var size = MediaQuery.of(context).size;

    // For para preencher o vetor de respostas, com base nas
    // cores dos botões de resposta
    
    for (k = 0; k <= 23; k++) {
      for (int i = 0; i <= 4; i++) {
        if (coresbotao[5 * k + i] ==  Colors.lightBlue[300]) {
          if (i == 0) {
            respostas[k] = "Nada";
            cont[k] = i;
          } else if (i == 1) {
            respostas[k] = "Um pouco";
            cont[k] = i;
          } else if (i == 2) {
            respostas[k] = "Moderadamente";
            cont[k] = i;
          } else if (i == 3) {
            respostas[k] = "Bastante";
            cont[k] = i;
          } else {
            respostas[k] = "Extremamente";
            cont[k] = i;
          }
        }
      }
    }
  


    return Scaffold(
      
      body: SingleChildScrollView( 
        child: Center(
        child: Column(
          children: [
            MenuVoltar('Confirme suas respostas', Colors.lightBlue[300]),
            /* SizedBox(
              height: MediaQuery.of(context).size.height * 0.065,
              width: MediaQuery.of(context).size.width * .001,
            ), */

            DataTable(
              dataRowHeight: MediaQuery.of(context).size.height * (0.06 + ((fonte/3) * 0.01)),
              columns: [
                  DataColumn(label: Text('Sentimento', style: TextStyle(fontSize: 14 + fonte))),
                  DataColumn(label: Text('Intensidade', style: TextStyle(fontSize: 14 + fonte))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Apavorado', style: TextStyle(fontSize: 14 + fonte)) ),
                  DataCell(Text('${respostas[0]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                DataRow(cells: [
                  DataCell(Text('Animado', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[1]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Confuso', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[2]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Esgotado', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[3]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Deprimido', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[4]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Desanimado', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[5]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Irritado', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[6]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Exausto', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[7]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Inseguro', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[8]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Sonolento', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[9]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Zangado', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[10]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Triste', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[11]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Ansioso', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[12]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Preocupado', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[13]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Com disposição', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[14]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Infeliz', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[15]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Desorientado', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[16]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Tenso', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[17]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Com raiva', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[18]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Com energia', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[19]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Cansado', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[20]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Mal-humorado', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[21]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Alerta', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[22]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
                                DataRow(cells: [
                  DataCell(Text('Indeciso', style: TextStyle(fontSize: 14 + fonte))),
                  DataCell(Text('${respostas[23]}', style: TextStyle(fontSize: 14 + fonte))),
                ]),
              ],
            ),

  /*          Text(
            "Apavorado ----->           ${respostas[0]}\n"
            "Animado ----->              ${respostas[1]}\n"
            "Confuso ----->               ${respostas[2]}\n"
            "Esgotado ----->             ${respostas[3]}\n"
            "Deprimido ----->           ${respostas[4]}\n"
            "Desanimado ----->       ${respostas[5]}\n"
            "Irritado ----->                 ${respostas[6]}\n"
            "Exausto ----->               ${respostas[7]}\n"
            "Inseguro ----->              ${respostas[8]}\n"
            "Sonolento ----->            ${respostas[9]}\n"
            "Zangado ----->              ${respostas[10]}\n"
            "Triste ----->                   ${respostas[11]}\n"
            "Ansioso ----->              ${respostas[12]}\n"
            "Preocupado ----->        ${respostas[13]}\n"
            "Com disposição -----> ${respostas[14]}\n"
            "Infeliz ----->                  ${respostas[15]}\n"
            "Desorientado ----->     ${respostas[16]}\n"
            "Tenso ----->                   ${respostas[17]}\n"
            "Com raiva ----->           ${respostas[18]}\n"
            "Com energia ----->      ${respostas[19]}\n"
            "Cansado ----->            ${respostas[20]}\n"
            "Mal-humorado ----->   ${respostas[21]}\n"
            "Alerta ----->                 ${respostas[22]}\n"
            "Indeciso ----->            ${respostas[23]}\n",),
            
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.width * .001,
            ),
    */ 
    Divider( height: size.height * 0.018 , thickness: 0.0, color: Colors.transparent ),      

          BotaoInicio('GRAVAR',  Colors.lightBlue[300], () => onclick()),
          ],
        ),
      ),
    ));
  }

 somas() {

    soma[0] = cont[6] + cont[10] + cont[18] + cont[21];
    soma[1] = cont[2] + cont[8] + cont[16] + cont[23];
    soma[2] = cont[4] + cont[5] + cont[11] + cont[15];
    soma[3] = cont[3] + cont[7] + cont[9] + cont[20];
    soma[4] = cont[0] + cont[12] + cont[13] + cont[17];
    soma[5] = cont[1] + cont[14] + cont[19] + cont[22];
  }


  onclick() {
    somas();
    String conteudo, nomearq;
    conteudo = 
        
        "Nome do voluntário   : $nome1\n" +

        "Local (Grupo)        : $local1\n\n" +


        "SOMAS DAS DIMENSÕES\n\n"

        "Raiva      ; ${soma[0]}\n" +
        "Confusão   ; ${soma[1]}\n" +
        "Depressão  ; ${soma[2]}\n" +
        "Fadiga     ; ${soma[3]}\n" +
        "Tensão     ; ${soma[4]}\n" +
        "Disposição ; ${soma[5]}\n\n"+
        
        "VALORES DE CADA SENTIMENTO\n\n"

        "Apavorado       ; ${cont[0]}\n"
        "Animado         ; ${cont[1]}\n"
        "Confuso         ; ${cont[2]}\n"
        "Esgotado        ; ${cont[3]}\n"
        "Deprimido       ; ${cont[4]}\n"
        "Desanimado      ; ${cont[5]}\n"
        "Irritado        ; ${cont[6]}\n"
        "Exausto         ; ${cont[7]}\n"
        "Inseguro        ; ${cont[8]}\n"
        "Sonolento       ; ${cont[9]}\n"
        "Zangado         ; ${cont[10]}\n"
        "Triste          ; ${cont[11]}\n"
        "Ansioso         ; ${cont[12]}\n"
        "Preocupado      ; ${cont[13]}\n"
        "Com disposição  ; ${cont[14]}\n"
        "Infeliz         ; ${cont[15]}\n"
        "Desorientado    ; ${cont[16]}\n"
        "Tenso           ; ${cont[17]}\n"
        "Com raiva       ; ${cont[18]}\n"
        "Com energia     ; ${cont[19]}\n"
        "Cansado         ; ${cont[20]}\n"
        "Mal-humorado    ; ${cont[21]}\n"
        "Alerta          ; ${cont[22]}\n"
        "Indeciso        ; ${cont[23]}\n"
        ;
    nomearq =
        DateFormat("dd-MM-yyyy – kk-mm-ss").format(DateTime.now()) + ".txt";
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
