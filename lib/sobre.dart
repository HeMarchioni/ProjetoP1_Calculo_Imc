import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Sobre extends StatelessWidget {
  const Sobre({Key? key}) : super(key: key);

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
                accountName: Text("DDMI"),
                accountEmail: Text("ddmi@ddmi.com.br")),
            ListTile(
              leading: const Icon(Icons.accessibility_new),
              title: const Text("Indice de Massa Corporal"),
              subtitle: const Text("Cuidando de sua saude"),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {},
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
        child: const SobreBody(),
    ),
    ),
    );
  }
}









class SobreBody extends StatefulWidget {
  const SobreBody({Key? key}) : super(key: key);

  @override
  _SobreBodyState createState() => _SobreBodyState();
}

class _SobreBodyState extends State<SobreBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 30),
          child: Text(
            'Sobre',
            textAlign: TextAlign.center,
            style: TextStyle (fontWeight: FontWeight.w700,
                    color: const Color(0xff242323),
                    fontFamily: 'Roboto',
                    fontSize: 33,
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0, 0),
          child: const Icon(Icons.adb,
              color: const Color(0xff111010)),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
          child: Text(
            'Aplicativo Calculo IMC\n Versão 1.01 \n Desenvolvido por Tech Monkeys ® 2021',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xff242323),
              fontSize: 18,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        Image.asset(
          'assets/images/TechMonkeys.jpg',
          width: 100,
          height: 150,
          fit: BoxFit.fitWidth,
        )
      ],
    );
  }
}
