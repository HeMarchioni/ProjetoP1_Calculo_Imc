import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj_calculo_imc/home.dart';
import 'package:proj_calculo_imc/sobre.dart';





class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 10, 30, 10),
          child: const InfoBody(),
        ),
      ),
    );
  }
}




class InfoBody extends StatefulWidget {
  const InfoBody({Key? key}) : super(key: key);

  @override
  _InfoBodyState createState() => _InfoBodyState();
}

class _InfoBodyState extends State<InfoBody> {
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
        child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
          child: Text(
            'O que é IMC',
            textAlign: TextAlign.center,
            style: TextStyle (fontWeight: FontWeight.w700,
              color: const Color(0xff242323),
              fontFamily: 'Roboto',
              fontSize: 33,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
          child: Text(
            'IMC é a sigla para Índice de Massa Corporal,que é um cálculo que serve para avaliar se a pessoa está dentro do seu peso ideal em relação à altura. Assim, de acordo com o valor do resultado de IMC, a pessoa pode saber se está dentro do peso ideal, acima ou abaixo do peso desejado.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xff242323),
              fontSize: 18,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
          child: Text(
            'Como calcular o IMC',
            textAlign: TextAlign.center,
            style: TextStyle (fontWeight: FontWeight.w700,
              color: const Color(0xff242323),
              fontFamily: 'Roboto',
              fontSize: 33,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
          child: Text(
            'O cálculo do IMC deve ser feito usando a seguinte fórmula matemática: Peso ÷ (altura x altura). Mas você também pode saber se está dentro do peso ideal utilizando a nossa calculadora',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xff242323),
              fontSize: 18,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30,0,30,30),
          child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    child: Text("Calculadora"),
                  ),
                ),
              ]
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
          child: Text(
            'Tabela de resultados do IMC',
            textAlign: TextAlign.center,
            style: TextStyle (fontWeight: FontWeight.w700,
              color: const Color(0xff242323),
              fontFamily: 'Roboto',
              fontSize: 33,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
          child: Text(
            'A tabela a seguir indica os possíveis resultados do IMC, de acordo com a Organização Mundial da Saúde, sendo que o IMC entre 18,5 a 24,9 representa o peso ideal e o menor risco de algumas doenças.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xff242323),
              fontSize: 18,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        Image.asset(
          'assets/images/TabelaIMC.PNG',
          width: 130,
          height: 450,
          fit: BoxFit.fitHeight,
        )
      ],
    ),
    );
  }
}


