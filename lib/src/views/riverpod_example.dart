import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';

//provider de controle de estado
final contadorProvider = StateProvider((ref) => 0);

//uso na ui
class RiverpodExample extends ConsumerWidget{

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    //substitui o detState
    final contador = ref.watch(contadorProvider);

    return Scaffold(
      body:  Center(child: Text('Valor: $contador'),),
      floatingActionButton: FloatingActionButton
      (onPressed: () => ref.read(contadorProvider.notifier).state++,
      child: Icon(Icons.add),
      ),
    );

  }
}