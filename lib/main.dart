import 'package:flutter/material.dart';
import 'package:mediantar2/aqs/aqspages/pageinfoaqs.dart';
import 'package:mediantar2/aqs/aqspages/fim.dart';
import 'package:mediantar2/aqs/aqspages/pag1.dart';
import 'package:mediantar2/aqs/aqspages/pag2.dart';
import 'package:mediantar2/aqs/aqspages/pag3.dart';
import 'package:mediantar2/aqs/aqspages/pag4.dart';
import 'package:mediantar2/aqs/aqspages/pag5.dart';
import 'package:mediantar2/aqs/aqspages/pageloginaqs.dart';
import 'package:mediantar2/brams/bramspages/pageloginbrams.dart';
import 'package:mediantar2/brams/bramspages/resultsbrams.dart';
import 'package:mediantar2/ddsono/ddspages/ddspage1.dart';
import 'package:mediantar2/brams/bramspages/pageinfobrams.dart';
import 'package:mediantar2/brams/bramspages/page1.dart';
import 'package:mediantar2/brams/bramspages/page2.dart';
import 'package:mediantar2/brams/bramspages/page3.dart';
import 'package:mediantar2/brams/bramspages/page4.dart';
import 'package:mediantar2/brams/bramspages/page5.dart';
import 'package:mediantar2/brams/bramspages/page6.dart';
import 'package:mediantar2/brams/bramspages/page7.dart';
import 'package:mediantar2/brams/bramspages/page8.dart';
import 'package:mediantar2/brams/bramspages/page9.dart';
import 'package:mediantar2/brams/bramspages/page10.dart';
import 'package:mediantar2/brams/bramspages/page11.dart';
import 'package:mediantar2/brams/bramspages/page12.dart';
import 'package:mediantar2/ddsono/ddspages/pagelogindds.dart';
import 'package:mediantar2/ep/pagesEp/pageloginep.dart';
import 'package:mediantar2/inicial/pageinicial.dart';
import 'package:mediantar2/ddsono/ddspages/pageinfodds.dart';
import 'package:mediantar2/ep/pagesEp/pageep.dart';
import 'package:mediantar2/ep/pagesEp/pageinfoep.dart';
// import 'package:mediantar2/login/pagelogin.dart';

void main() {
  //runApp(MyApp());
  runApp(MaterialApp(
    
      debugShowCheckedModeBanner: false,
      initialRoute: "/telainicial",
        routes: {
       // "/telalogin": (context) => Pagelogin(),
        "/telainicial": (context) => TelaInicial(),

        //Páginas do Brams

        "/pageinfobrams": (context) => Paginainfobrams(),
        "/pageloginbrams": (context) => Paginaloginbrams(),
        "/pagebrams1": (context) => Paginabrams1(),
        "/pagebrams2": (context) => Paginabrams2(),
        "/pagebrams3": (context) => Paginabrams3(),
        "/pagebrams4": (context) => Paginabrams4(),
        "/pagebrams5": (context) => Paginabrams5(),
        "/pagebrams6": (context) => Paginabrams6(),
        "/pagebrams7": (context) => Paginabrams7(),
        "/pagebrams8": (context) => Paginabrams8(),
        "/pagebrams9": (context) => Paginabrams9(),
        "/pagebrams10": (context) => Paginabrams10(),
        "/pagebrams11": (context) => Paginabrams11(),
        "/pagebrams12": (context) => Paginabrams12(),
        "/resultsbrams": (context) => Resultsbrams(),

        //Páginas Diário do sono
        
        "/pageinfodds": (context) => Paginainfodds(),
        "/pagelogindds": (context) => Paginalogindds(),
        "/pagedds1": (context) => Paginadds1(),

        //Páginas do AQS

        "/pageinfoaqs": (context) => Paginainfoaqs(),
        "/pageloginaqs": (context) => Paginaloginaqs(),
        "/pageaqs1": (context) => Paginaaqs1(),
        "/pageaqs2": (context) => Paginaaqs2(),
        "/pageaqs3": (context) => Paginaaqs3(),
        "/pageaqs4": (context) => Paginaaqs4(),
        "/pageaqs5": (context) => Paginaaqs5(),
        "/fimaqs": (context) => Fimaqs(),

        //Páginas do Ep

        "/pageinfoep": (context) => Paginainfoep(),
        "/pageloginep": (context) => Paginaloginep(),
        "/pageep1": (context) => Paginaep1(),
        
      }));
      
}
