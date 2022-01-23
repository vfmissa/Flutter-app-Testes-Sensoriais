// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food_test_app/AnaliseDiscriminativo.dart';
import 'package:food_test_app/ComparativoNumAmostras.dart';
import 'package:food_test_app/FichaCompleta.dart';
import 'package:food_test_app/ComparativoAmostra.dart';
import 'package:food_test_app/FichaAvaliacao.dart';


class drawer extends StatefulWidget {
  String amostra;
  String julgador;

  drawer(this.amostra,this.julgador);
  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {

  @override
  final padding = EdgeInsets.fromLTRB(10, 10, 10, 0);
  Widget build(BuildContext context) {
   String amostra=widget.amostra;
   String julgador = widget.julgador;
    return Drawer(
      child: Material(
        color: Colors.blue,
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(text: "Discriminativo",
                icon: Icons.analytics_outlined,
                onCliked: () => selectedItem(context, 0,amostra,julgador)),

            const SizedBox(
              height: 16,
            ),
            buildMenuItem(text: "Comparativo",
                icon: Icons.add_chart_outlined,
                onCliked: () => selectedItem(context, 1,amostra,julgador)),
            Divider(
              color: Colors.white30,
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(text: "Avaliativo",
                icon: Icons.assignment_outlined,
                onCliked: () => selectedItem(context, 3,amostra,julgador)),
          ],
        ),)
      ,
    );
  }
}


Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onCliked,
}) {
  final color = Colors.white;
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: TextStyle(color: color),
    ),
    hoverColor: Colors.red,
    onTap: onCliked,
  );
}

void selectedItem(BuildContext context, int index,String amostra,String julgador) {

  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>
            AnaliseDiscriminativo(amostra, julgador, "caracteristica"),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ComparativoNumAmostras(amostra, julgador,),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => FichaAvaliacao(amostra, julgador,),
      ));
      break;
  }
}