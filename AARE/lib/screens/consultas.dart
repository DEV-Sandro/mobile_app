import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todouiexample/screens/agendamentos.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Row(
          children: [
            ///Inicio Layout
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "AGENDAMENTO",
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.2,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w900,
                        color: Colors.blueGrey[200]
                      ),
                    ),

                    ///Espaçamento
                    SizedBox(
                      height: 4,
                    ),

                    Row(
                      children: [
                        ///Text
                        Text(
                          "Médico",
                          style: TextStyle(
                            fontSize: 50,
                            height: 1.2,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),

                    ///Lista de Agendamento
                    Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index){
                            ///Branco = a ser atendido
                            ///Laranja = já foram atendidos
                            return Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blueGrey[100]
                                ),
                                color: index == 1 ? Colors.orangeAccent[400] : Colors.transparent
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "NOME DO PACIENTE",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: index == 1 ? Colors.white : Colors.grey[800]
                                          ),
                                        ),
                                      ),

                                      ///Espaçamento
                                      SizedBox(width: 4,),

                                      index == 1 ? Icon(Icons.check_circle, color: Colors.white,) : Container()

                                    ],
                                  ),

                                  ///Espaçamento
                                  SizedBox(height: 8,),

                                  ///Data
                                  Row(
                                    children: [
                                      Text(
                                        "25/11/2020",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: index == 1 ? Colors.white70 : Colors.grey[500]
                                        ),
                                      ),
                                      Spacer(),
                                      index == 1 ?
                                      Text(
                                        "JÁ FOI ATENDIDO",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 12,
                                            color: Colors.white
                                        ),
                                      ) :
                                      Text(
                                        "14:30",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: index == 1 ? Colors.white70 : Colors.grey[500]
                                        ),
                                      ),
                                    ],
                                  )
                                ],

                              ),
                            );
                          },
                          separatorBuilder: (context, index) => Divider(height: 16, color: Colors.transparent,),
                          itemCount: 6,
                      ),
                    ),

                    ///Espaçamento
                    SizedBox(
                      height: 16,
                    ),

                    ///Botão para Add agendamento
                    Container(
                      width: double.infinity,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        color: Colors.black,
                        child: Text(
                          "Novo Agendamento",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        onPressed: (){
                          var push = Navigator.push(context, MaterialPageRoute(
                            builder: (context) => CreateTaskScreen()
                          ));
                        },
                      ),
                    )


                  ],
                ),
              ),
            ),

            ///Lateral
            Container(
              width: MediaQuery.of(context).size.width*0.22,
              color: Colors.black,
              height: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
              child: Column(
                children: [

                  ///Espaçamento para ficar no meio
                  Spacer(),

                  ///Botões dias da Semana (S = Segunda-Feira)
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.orangeAccent[400]
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        "S",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 24
                        ),
                      ),
                    ),
                  ),

                  ///Entre os botões (Não ficar juntos)
                  SizedBox(height: 16,),

                  ///Botões dias da Semana (T = Terça-Feira)
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[800]
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        "T",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),


                  ///Entre os botões (Não ficar juntos)
                  SizedBox(height: 16,),

                  ///Botões dias da Semana (Q = Quarta-Feira)
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[800]
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        "Q",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),

                  ///Entre os botões (Não ficar juntos)
                  SizedBox(height: 16,),

                  ///Botões dias da Semana (Q = Quinta-Feira)
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[800]
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        "Q",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),

                  ///Entre os botões (Não ficar juntos)
                  SizedBox(height: 16,),

                  ///Botões dias da Semana (S = Sexta-Feira)
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[800]
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        "S",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),

                  ///Espaçamento
                  Spacer(),


                  ///Calendario
                  IconButton(
                    icon: Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
