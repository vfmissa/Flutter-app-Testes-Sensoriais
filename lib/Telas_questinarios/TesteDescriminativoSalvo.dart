// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food_test_app/Modelo%20de%20Classes/ModeloDiscriminativo.dart';

class TestDescriminativoSalvo extends StatefulWidget {
  late final ModeloDiscriminativo teste;

  TestDescriminativoSalvo(this.teste);

  @override
  _TestDescriminativoSalvoState createState() =>
      _TestDescriminativoSalvoState();
}

class _TestDescriminativoSalvoState extends State<TestDescriminativoSalvo> {
  late ModeloDiscriminativo teste;

  @override
  void initState() {
    teste = widget.teste;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste da amostra: " + teste.Numamostra),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.black54),
            color: Colors.white30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget> [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //row de texto
                children: [
                  Text(
                    "Caracteristica: "+teste.caracteristica,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                  Text(
                    "Julgador: "+teste.id.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
                width: 0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 65, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Apresentou Menos: ",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 15, fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "Indiferente",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "Apresentou maior: ",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 15),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        initialValue: teste.Numamostra.toString(),
                        readOnly: true,
                        //controller: sample1Menos,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          hintText: "Menos :",
                          hintStyle: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      )),
                ),
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        initialValue: teste.Numamostra2.toString(),
                        readOnly: true,
                        //controller: sample2Meio,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.blue,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                            )),
                      )),
                ),
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        keyboardType: TextInputType.text, readOnly: true,
                        initialValue: teste.Numamostra3.toString(),
                        //controller: sample3Mais,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      )),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [

                  SizedBox(
                    width: 15,
                  ),

                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        initialValue: teste.Numamostra4.toString(),
                        readOnly: true,
                        //controller: sample1Menos,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          hintText: "Menos :",
                          hintStyle: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      )),
                ),
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        initialValue: teste.Numamostra5.toString(),
                        readOnly: true,
                        //controller: sample2Meio,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.blue,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                            )),
                      )),
                ),
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        keyboardType: TextInputType.text, readOnly: true,
                        initialValue: teste.Numamostra6.toString(),
                        //controller: sample3Mais,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      )),
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        initialValue: teste.Numamostra7.toString(),
                        readOnly: true,
                        //controller: sample1Menos,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          hintText: "Menos :",
                          hintStyle: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      )),
                ),
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        initialValue: teste.Numamostra8.toString(),
                        readOnly: true,
                        //controller: sample2Meio,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.blue,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                            )),
                      )),
                ),
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        keyboardType: TextInputType.text, readOnly: true,
                        initialValue: teste.Numamostra9.toString(),
                        //controller: sample3Mais,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      )),
                ),
              ]),

              // ignore: prefer_const_constructors
              SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  color: Colors.white12,
                ),
                // ignore: prefer_const_constructors
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    // ignore: prefer_const_constructors
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      initialValue: teste.comentario,
                      readOnly: true,
                      maxLines: 3,
                      //controller: comentario,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        contentPadding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        hintText: "Comentarios:",
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
