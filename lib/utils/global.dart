
import 'package:flutter/material.dart';

// Vetores p/ Brams
List<Color> coresbotao = [];
List<String> respostas = [];
Color corbotao = Colors.white;
List<int> cont = [];
List<int> soma = [];
int raiva = 0;
int confusao = 0;
int depressao = 0;
int fadiga = 0;
int tensao = 0;
int disposicao = 0;

double mediara = 0;
double mediaco = 0;
double mediade = 0;
double mediafa = 0;
double mediate = 0;
double mediadi = 0;

// Vetores p/ Diario do sono

Color corbotaodiario = Colors.white;
List<Color> coresbotaodiario = [];
List<TimeOfDay> horaresposta = [null, null, null, null, null, null, null];
List<double> tamanhoreta = [null, null];
List<int> valor = [0, 0];
List<String> ddsresposta = [];
String erro = '';
TextEditingController ddsobservacao = new TextEditingController();

// Vetores p/ Epworth

List<Color> coresbotaoep = [];
List<String> respostasep = [];
List<String> confereep = [];
Color corbotaoep = Colors.white;
List<int> respostaep = [null, null, null, null, null, null, null, null];

// Variaveis p/ Aqs
String per, per1, art, art1;
String dB6;
List<String> respostaBox = [];
// de 0 a 10 posição respostas da pergunta 5
// 11,12 e 13 posição pergunta 7, 8 e 9
//14 a 18 pergunta 11
List<TimeOfDay> horarespostapit = [null, null];
// posicao 0 pergunta 1
//posicao 1 pergunta 3

int hora = 0; // pergunta 4
int minuto = 0; //pergunta 2
List<Color> resposta9 = [];
String respostapit9 = "";
Color corbotaopit = Colors.white;

// Página de inicio

double fonte = 3;

// Página de login

  GlobalKey<FormState> key = new GlobalKey();
  bool validate = false;
  String nome1, local1;
