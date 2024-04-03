
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';


class Pedra_p_t extends StatefulWidget {
  const Pedra_p_t({super.key});

  @override
  State<Pedra_p_t> createState() => _Pedra_p_tState();
}

class _Pedra_p_tState extends State<Pedra_p_t> {

  final imgPedra = SizedBox(height: 100, width: 100, child: Image.asset("assets/images/papel.png"),);
  final imgPapel = SizedBox(height: 100, width: 100, child: Image.asset("assets/images/papel.png"),);
  final imgTesoura = SizedBox(height: 100, width: 100, child: Image.asset("assets/images/tesoura.png"),);
  final pedra = SizedBox(height: 50, width: 100, child: Text("Pedra"),);
  final papel = SizedBox(height: 50, width: 100, child: Text("Papel"),);
  final tesoura = SizedBox(height: 50, width: 100, child: Text("Tesoura"),);
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Joguinho",style: TextStyle(color: Colors.white),),//titulo da app bar
        centerTitle: true,//colocar o titulo no centro
        backgroundColor: const Color.fromARGB(255, 162, 138, 228),
      ),

      body: SingleChildScrollView(child: Container(child: Column(children: [
        SizedBox(height: 20,),

        Text("Escolha uma das opções abaixo:",style: TextStyle(fontSize: 20,),),

        Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          GestureDetector(
            child: imgPedra,
            onTap: (){
              int op = Random().nextInt(3);
              if (op == 1) {
                result = "EMPATE. O querido aqui escolheu pedra";
              }
              else if(op == 2){
                result = "PERDEU. O querido aqui escolheu papel";
              }
              else{
                result = "GANHOU. O querido aqui escolheu tesoura";
              }
              setState(() {
                
              });
              Future.delayed(Duration(seconds: 1,milliseconds: 500),(){

              }
              );
            },
          ),
          GestureDetector(
            child: imgPapel,
            onTap: (){
              int op = Random().nextInt(3);
              if(op == 1){
                result = "VENCEU. O querido aqui escolheu pedra";
              }
              else if (op == 2)
              {
                result = "EMPATE. O querido aqui escolheu papel";
              }
              else{
                result = "PERDEU. O querido aqui escolheu tesoura";
              }
              setState(() {
                
              });
              Future.delayed(Duration(seconds: 1,milliseconds: 500),(){

              }
              );
            },
          ),

            GestureDetector(
            child: imgTesoura,
            onTap: (){
              int op = Random().nextInt(3);
              if(op == 1){
                result = "PERDEU. O querido aqui escolheu pedra";
              }
              else if (op == 2)
              {
                result = "VENCEU. O querido aqui escolheu papel";
              }
              else{
                result = "EMPATE. O querido aqui escolheu tesoura";
              }
              setState(() {
                
              });
              Future.delayed(Duration(seconds: 1,milliseconds: 500),(){

              }
              );
            },
          )
        ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          SizedBox(width: 60,),
          pedra,
          papel,
          tesoura,
        ],),
        Text(result),
      ],
      ),
      ),
      ),
    );
  }
}