import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj_calculo_imc/info.dart';
import 'package:proj_calculo_imc/sobre.dart';




class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('App Calculo IMC'),

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                accountName: Text("User"),
                accountEmail: Text("User@user.com.br")),
            ListTile(
              leading: const Icon(Icons.ad_units),
              title: const Text("Indice de Massa Corporal"),
              subtitle: const Text("Calcular IMC"),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.accessibility_new),
              title: const Text("Indice de Massa Corporal"),
              subtitle: const Text("Saiba Mais"),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Info()),
              );
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_balance_sharp),
              title: const Text("Sobre"),
              subtitle: const Text("Informações da aplicação"),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Sobre()),
                );
              },
            )
          ],
        ),
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





class _CalculoIMCState extends State<CalculoIMC> {


  final TextEditingController entradaPeso = TextEditingController();
  final TextEditingController entradaAltura = TextEditingController();

  var imcValor = '';
  var imcMensagem = '';






  void calcIMC(){

    double peso = double.parse(entradaPeso.text.replaceAll(",", "."));
    double altura = double.parse(entradaAltura.text.replaceAll(",", "."))/100;

    setState(() {

      var imc = peso/(altura*altura);
      imcValor = "Seu IMC é: ";

      if( imc < 18.5) {
        imcMensagem = 'ABAIXO DO PESO';
      } else if(imc < 24.9 ) {
        imcMensagem = 'PESO NORMAL';
      } else if(imc < 29.9 ) {
        imcMensagem = 'SOBREPESO';
      } else if(imc < 34.9 ) {
        imcMensagem = 'OBESIDADE GRAU I';
      } else if(imc < 39.9 ) {
        imcMensagem = 'OBESIDADE GRAU II';
      } else {
        imcMensagem = 'OBESIDADE GRAU III';
      }

      imcValor+= (imc).toStringAsFixed(2);

    });
  }








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
                maxLength: 5,
                keyboardType: TextInputType.number,  // -> teclado que ira aparecer para inserir na caixa de texto input
                controller: entradaPeso,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Peso em kg'),
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
                maxLength: 3,
                keyboardType: TextInputType.number,  // -> teclado que ira aparecer para inserir na caixa de texto input
                controller: entradaAltura,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Altura em cm'),
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
                          try {
                            calcIMC();
                            // Respond to button press
                          } catch(e) {
                            setState(() {
                              imcValor = "Erro: Digite o valor";
                            });
                          }
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
                padding: const EdgeInsets.fromLTRB(50,20,10,10),
                child: ListTile(
                  title: Text( '$imcValor',
                    style: TextStyle(
                        fontSize: 27.0,
                        color: Colors.yellow,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                  ),
                  leading: Icon(Icons.arrow_forward),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(50,10,10,10),
                child: ListTile(
                  title: Text( '$imcMensagem',
                    style: TextStyle(
                    fontSize: 27.0,
                    color: Colors.yellow,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto"),
                  ),
                  leading: Icon(Icons.arrow_forward),
                ),
              ),
              Padding(
                padding: const  EdgeInsets.fromLTRB(15,10,15,10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Info()),
                    );
                  },
                  child: Text("Saiba Mais Sobre o IMC"),
                ),
              ),
            ],
          ),


        ]
    );

  }
}



