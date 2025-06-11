import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
String _status = "aguardando...";
bool _carregando = false;

//sempre que trabalhar com tarefas assíncronas no flutter use initState
@override
  void initState() {
    super.initState();
  }

//simulação de login
Future<bool> autenticar(String usuario, String senha) async{
  await Future.delayed(Duration(seconds: 2));
  return usuario == "admin" && senha == '1234';
}

void _fazerLogin () async{
  setState(() {
    _carregando = true;
    _status = "Processando...";
  });
  bool sucesso = await autenticar('admin', '12345');

setState((){
  _carregando = false;
  _status = sucesso ? "login bem sucedidos" : "Falha no login";
});

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login com Future"),),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(_carregando) CircularProgressIndicator(),
            SizedBox(height: 20),
            Text(_status, style: TextStyle(fontSize: 18),),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: _carregando ? null : _fazerLogin,
              child: Text("simular login")
            ),
          ],
        ),
      ),
    );
  }
}