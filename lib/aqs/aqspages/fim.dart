import "dart:io";
import "package:intl/intl.dart";
import "package:mediantar2/utils/global.dart";
import 'package:mediantar2/utils/widgets_global.dart';
import "package:flutter/material.dart";
import "package:fluttertoast/fluttertoast.dart";
import "package:downloads_path_provider/downloads_path_provider.dart";

class Fimaqs extends StatefulWidget {
  @override
  _FimaqsState createState() => _FimaqsState();
}

class _FimaqsState extends State<Fimaqs> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    // For para preencher o vetor de respostas, com base nas
    // cores dos botões de resposta

    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
      child: Column(children: [
        MenuVoltar(
            'Confirme suas respostas dess$art1 $per', Colors.lightBlue[900]),
        /* SizedBox(
              height: MediaQuery.of(context).size.height * 0.065,
              width: MediaQuery.of(context).size.width * .001,
            ), */

        DataTable(
          dataRowHeight: MediaQuery.of(context).size.height *
              (0.06 + ((fonte / 3) * 0.02)),
          columns: [
            DataColumn(
                label: Text('Questão', style: TextStyle(fontSize: 15 + fonte))),
            DataColumn(
                label:
                    Text('Resposta', style: TextStyle(fontSize: 15 + fonte))),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('1.', style: TextStyle(fontSize: 15 + fonte))),
              DataCell(Text(
                  '${horarespostapit[0].hour}: ${horarespostapit[0].minute}',
                  style: TextStyle(fontSize: 15 + fonte))),
            ]),
            DataRow(cells: [
              DataCell(Text('2.', style: TextStyle(fontSize: 15 + fonte))),
              DataCell(Text('$minuto Minutos',
                  style: TextStyle(fontSize: 15 + fonte))),
            ]),
            DataRow(cells: [
              DataCell(Text('3.', style: TextStyle(fontSize: 15 + fonte))),
              DataCell(Text(
                  '${horarespostapit[1].hour}:${horarespostapit[1].minute}',
                  style: TextStyle(fontSize: 15 + fonte))),
            ]),
            DataRow(cells: [
              DataCell(Text('4.', style: TextStyle(fontSize: 15 + fonte))),
              DataCell(
                  Text('$hora Horas', style: TextStyle(fontSize: 15 + fonte))),
            ]),
            DataRow(cells: [
              DataCell(Text('5.a.', style: TextStyle(fontSize: 15 + fonte))),
              DataCell(Text('${respostaBox[0]}',
                  style: TextStyle(fontSize: 15 + fonte))),
            ]),
            DataRow(cells: [
              DataCell(Text('5.b.', style: TextStyle(fontSize: 15 + fonte))),
              DataCell(Text('${respostaBox[1]}',
                  style: TextStyle(fontSize: 15 + fonte))),
            ]),
            DataRow(cells: [
              DataCell(Text('5.c', style: TextStyle(fontSize: 15 + fonte))),
              DataCell(Text('${respostaBox[2]}',
                  style: TextStyle(fontSize: 15 + fonte))),
            ]),
            DataRow(cells: [
              DataCell(Text('5.d', style: TextStyle(fontSize: 15 + fonte))),
              DataCell(Text('${respostaBox[3]}',
                  style: TextStyle(fontSize: 15 + fonte))),
            ]),
            DataRow(cells: [
              DataCell(Text('5.e', style: TextStyle(fontSize: 15 + fonte))),
              DataCell(Text('${respostaBox[4]}',
                  style: TextStyle(fontSize: 15 + fonte))),
            ]),
            DataRow(cells: [
              DataCell(Text('5.f', style: TextStyle(fontSize: 15 + fonte))),
              DataCell(Text('${respostaBox[5]}',
                  style: TextStyle(fontSize: 15 + fonte))),
            ]),
            DataRow(cells: [
              DataCell(Text('5.g.', style: TextStyle(fontSize: 15 + fonte))),
              DataCell(Text('${respostaBox[6]}',
                  style: TextStyle(fontSize: 15 + fonte))),
            ]),
            DataRow(
              cells: [
                DataCell(Text('5.h.', style: TextStyle(fontSize: 15 + fonte))),
                DataCell(Text('${respostaBox[7]}',
                    style: TextStyle(fontSize: 15 + fonte))),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('5.i.', style: TextStyle(fontSize: 15 + fonte))),
                DataCell(Text('${respostaBox[8]}',
                    style: TextStyle(fontSize: 15 + fonte))),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('5.j.', style: TextStyle(fontSize: 15 + fonte))),
                DataCell(Text('${respostaBox[9]}',
                    style: TextStyle(fontSize: 15 + fonte))),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('5.k.', style: TextStyle(fontSize: 15 + fonte))),
                DataCell(Text('${respostaBox[10]}',
                    style: TextStyle(fontSize: 15 + fonte))),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('6.', style: TextStyle(fontSize: 15 + fonte))),
                DataCell(Text('$dB6', style: TextStyle(fontSize: 15 + fonte))),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('7.', style: TextStyle(fontSize: 15 + fonte))),
                DataCell(Text('${respostaBox[11]}',
                    style: TextStyle(fontSize: 15 + fonte))),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('8.', style: TextStyle(fontSize: 15 + fonte))),
                DataCell(Text('${respostaBox[12]}',
                    style: TextStyle(fontSize: 15 + fonte))),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('9.', style: TextStyle(fontSize: 15 + fonte))),
                DataCell(Text('${respostaBox[13]}',
                    style: TextStyle(fontSize: 15 + fonte))),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('10.', style: TextStyle(fontSize: 15 + fonte))),
                DataCell(Text('$respostapit9',
                    style: TextStyle(fontSize: 15 + fonte))),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('11.a', style: TextStyle(fontSize: 15 + fonte))),
                DataCell(Text('${respostaBox[14]}',
                    style: TextStyle(fontSize: 15 + fonte))),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('11.b', style: TextStyle(fontSize: 15 + fonte))),
                DataCell(Text('${respostaBox[15]}',
                    style: TextStyle(fontSize: 15 + fonte))),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('11.c', style: TextStyle(fontSize: 15 + fonte))),
                DataCell(Text('${respostaBox[16]}',
                    style: TextStyle(fontSize: 15 + fonte))),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('11.d', style: TextStyle(fontSize: 15 + fonte))),
                DataCell(Text('${respostaBox[17]}',
                    style: TextStyle(fontSize: 15 + fonte))),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('11.e', style: TextStyle(fontSize: 15 + fonte))),
                DataCell(Text('${respostaBox[18]}',
                    style: TextStyle(fontSize: 15 + fonte))),
              ],
            ),
          ],
        ),
        Divider(
            height: size.height * 0.018,
            thickness: 0.0,
            color: Colors.transparent),
        BotaoInicio('GRAVAR', Colors.lightBlue[900], () => onclick()),
      ]),
    )));
  }

  onclick() {
    String conteudo, nomearq;
    conteudo = "Nome do voluntário   : $nome1\n" +
        "Local (Grupo)        : $local1\n\n" +
        "Questões e Respostas $per1\n\n"
            "1.             ; ${horarespostapit[0].hour}:${horarespostapit[0].minute}\n"
            "2.             ; $minuto Minutos\n"
            "3.             ; ${horarespostapit[1].hour}:${horarespostapit[1].minute}\n"
            "4.             ; $hora Horas\n"
            "5.a.           ; ${respostaBox[0]}\n"
            "5.b.           ; ${respostaBox[1]}\n"
            "5.c.           ; ${respostaBox[2]}\n"
            "5.d.           ; ${respostaBox[3]}\n"
            "5.e.           ; ${respostaBox[4]}\n"
            "5.f.           ; ${respostaBox[5]}\n"
            "5.g.           ; ${respostaBox[6]}\n"
            "5.h.           ; ${respostaBox[7]}\n"
            "5.i.           ; ${respostaBox[8]}\n"
            "5.j.           ; ${respostaBox[9]}\n"
            "5.k.           ; ${respostaBox[10]}\n"
            "6.             ; $dB6\n"
            "7.             ; ${respostaBox[11]}\n"
            "8.             ; ${respostaBox[12]}\n"
            "9.             ; ${respostaBox[13]}\n"
            "10.            ; $respostapit9\n"
            "11.a.          ; ${respostaBox[14]}\n"
            "11.b.          ; ${respostaBox[15]}\n"
            "11.c.          ; ${respostaBox[16]}\n"
            "11.d.          ; ${respostaBox[17]}\n"
            "11.e.          ; ${respostaBox[18]}\n";

    nomearq =
        DateFormat("dd-MM-yyyy – kk-mm-ss").format(DateTime.now()) + ".txt";
    // print("ok");
    save(nomearq, conteudo);
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
      for (int i = 0; i < 16; i++) {
        respostaBox[i] = null;
      }
      dB6 = null;
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
