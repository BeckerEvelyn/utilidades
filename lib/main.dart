import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utilidades/dartAvancado/future/login.dart';
import 'package:utilidades/dartAvancado/isolate/product_parse.dart';
import 'package:utilidades/dartAvancado/stream/busca_com_stream.dart';
import 'package:utilidades/src/app/app_widget.dart';
import 'package:utilidades/src/views/counter_cubit.dart';

void main() {
  //runApp(AppWidget());
  /* 
  riverpod - é uma biblioteca de gerenciamento de estaado desenvolvida por Rmi Rousselet (criador do provider). Ele foi criado para 
  corrigir limitações do provider e oferecer uma abordagem maais robusta, segura e flexível.

  VANTAGENS
  - seguro em tempo de compilação, detecta os reeos mais cedo
  - nãp depende de BuildContext
  - testável e modular
  - suporte nativo para providers assincronos, como FtutureProvider e StreamProvider
  
  ---------------------------------------------------

  BLoC - Business Logic Component
  é um padrão de arquitetura que separa a lógica de negócios da interface de usuário usando streams.
  Ele foi criado pelo Google para facilitar o reuso da lógica em váriaos widgets.

  VANTAGENS
  - muito usado em apps corporativos
  - força uma aquitetura bem definida
  - baseando em trea (fluxo de dados)

  CONCEITOS PRINCIPAIS
  - event: entrada enviada pelo usuário
  - state: saída do bloco
  - bloc: recebe eventos e emite estados

  para usar precisamos intalar o pacote flutter_bloc

  bloc + cubit

  cubit é uma versão mais simpledes e direta do bloc, sem eventos, você apenas chama métodos e emite estados diretamente

  */

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CounterCubit(),
        child: CounterPage(),
      ),
    );
  }
}

