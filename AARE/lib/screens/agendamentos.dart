import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateTaskScreen extends StatefulWidget {
  @override
  _CreateTaskScreenState createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  bool remindMe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
          color: Colors.grey[800],
        ),
        title: Text("aasdas"),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Text(
              "Novo Agendamento",
              style: TextStyle(
                  fontSize: 30,
                  height: 1.2,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[800]),
            ),

            /// Espaçamento
            Spacer(),
            Spacer(),

            ///Container Do Nome

            TextField(
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.grey[800],
              ),
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey[100])),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey[100])),
                hintText: "Nome do Paciente",
                hintStyle:TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[400],
                ),
              ),
            ),

            /// Espaçamento
            Spacer(),
            Spacer(),

            ///Container Data / Hora
            Container(
              child: Row(
                children: [

                  ///Container Icone Data
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(255, 240, 240, 1)
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      Icons.calendar_today,
                      color: Colors.redAccent,
                    ),
                  ),

                  ///Espaçamento
                  SizedBox(width: 24,),

                  ///Textos da Data
                  Text("26/11/2020",
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.2,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[700]
                    ),
                  )
                ],
              ),
            ),

            ///Espaçamento
            SizedBox(height: 16,),

            Container(
              child: Row(
                children: [

                  ///Container Icone Hora
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(255, 250, 240, 1)
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      Icons.alarm,
                      color: Colors.orangeAccent,
                    ),
                  ),

                  SizedBox(width: 24,),

                  ///Texto Hora
                  Text("15:30",
                    style: TextStyle(
                        fontSize: 18,
                        height: 1.2,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[700]
                    ),
                  )
                ],
              ),
            ),

            ///Espaçamento
            Spacer(),

            ///Tipo da consulta
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueGrey[100],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  ///Container Icone Tipo
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(255, 250, 240, 1)
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      Icons.web_asset,
                      color: Colors.orangeAccent,
                    ),
                  ),

                  ///Espaçamento
                  SizedBox(width: 24,),

                  ///Texto Tipo
                  Text("Dr.Gefer",
                    style: TextStyle(
                        fontSize: 18,
                        height: 1.2,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[700]
                    ),
                  ),

                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: (){

                    },
                  )
                ],
              ),
            ),


            SizedBox(height: 16,),

            ///Container Lembrar-me
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueGrey[100],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  ///Container Icone lembrar-me
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(240, 235, 255, 1)
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      Icons.alarm_on,
                      color: Colors.purpleAccent[100],
                    ),
                  ),

                  SizedBox(width: 24,),

                  ///Texto Lembre-me
                  Text("Lembre-me",
                    style: TextStyle(
                        fontSize: 18,
                        height: 1.2,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[700]
                    ),
                  ),

                  Spacer(),
                  Switch(
                    onChanged: (value){
                      setState(() {
                        remindMe = value;
                      });
                    },
                    value: remindMe,
                    activeColor: Colors.lightBlueAccent,
                  )
                ],
              ),
            ),

            Spacer(),

            ///Botão de Confirmação
            Container(
              width: double.infinity,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
                color: Colors.black,
                child: Text("CONFIRMAR AGENDAMENTO",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    color: Colors.white
                  ),
                ),
                onPressed: (){},
              ),
            )
          ],
        ),
      ),
    );
  }
}
