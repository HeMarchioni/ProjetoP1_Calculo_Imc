import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Calculo IMC'),

      ),

      body: const CalculoIMC(),
    );
  }
}





class CalculoIMC extends StatefulWidget {
  const CalculoIMC({Key? key}) : super(key: key);

  @override
  _CalculoIMCState createState() => _CalculoIMCState();
}


final TextEditingController entradaPeso = TextEditingController();
final TextEditingController entradaAltura = TextEditingController();

var tempV1 = '';
var tempV2 = '';


void coversor(){


}






class _CalculoIMCState extends State<CalculoIMC> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children:[

          // -> ================================================== Texto Principal

          Padding(
            padding: const EdgeInsets.fromLTRB(40,10,40,20),
            child: Text('Digite os valores para Calcular seu IMC',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize:30.0,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffffffff),
                  fontFamily: "Roboto"
              ),
            ),
          ),





          // ==============================================================-> Entrada de valor peso


          Padding(
              padding: const EdgeInsets.fromLTRB(50,10,50,10),
              child:
              TextField(
                keyboardType: TextInputType.number,  // -> teclado que ira aparecer para inserir na caixa de texto input
                controller: entradaPeso,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Peso'),
                style: TextStyle(fontSize:32.0,
                    color: const Color(0xFFDB9430),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
              )
          ),



          // ==============================================================-> Entrada de valor altura


          Padding(
              padding: const EdgeInsets.fromLTRB(50,10,50,10),
              child:
              TextField(
                keyboardType: TextInputType.number,  // -> teclado que ira aparecer para inserir na caixa de texto input
                controller: entradaAltura,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Altura'),
                style: TextStyle(fontSize:32.0,
                    color: const Color(0xFFDB9430),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
              )
          ),






          //===================================================== --> Botão Conversão

          Padding(
            padding: const EdgeInsets.fromLTRB(10,10,10,10),
            child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        coversor();
                        // Respond to button press
                      },
                      child: Text("CALCULAR"),
                    ),
                  ),
                ]
            ),
          ),


          //===================================================== --> Lista das respostas


          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50,10,10,10),
                child: ListTile(
                  title: Text('$tempV1'),
                  leading: Icon(Icons.arrow_forward),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(50,10,10,10),
                child: ListTile(
                  title: Text('$tempV2'),
                  leading: Icon(Icons.arrow_forward),
                ),
              ),
            ],
          ),


        ]
    );

  }
}



