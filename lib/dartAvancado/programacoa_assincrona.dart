/*
 * Programação assincrona é um modelo de programação onde as operações que podem levar tempo para serem concluídas (como chamadas de 
 * rede, leitura de arquivos ou espera por eventos) são executadas sem bloquear o fluxo prinvipal do programa.
 * 
 * CONCEITO TÉCNICO
 * em vez de esperar uma tarefa demorada terminar antes de continuar, a programação assincrona registra um callback (função de retorno) 
 * ou usa estruturas como Future, Stream, async/await para delegar a tarefa e continuar executando o restante do código. Quando a tarefa 
 * termina, o resultado é entregue automaticamente.
 * 
 * NO DART
 * 
 * Futere<T> => representa uma operação assíncrona que eventualmente retorna um valor do tipo T
 * 
 * async e await => permitem escrever código assíncrono como sr fosse síncrono
 * 
 * Stream<T> => representa uma sequência assíncrona de valores (ex: eventos, dados em série)
 *  
 */

void main(List<String> args) {
  imprimeNumeros();
}

  imprimeNumeros() async{
    numero1();
    await numero2(); // aguarde o resultado da função
    numero3();
  }

  void numero1(){
    print("número 1");
  }
  Future<void> numero2(){
    return Future.delayed(Duration(seconds: 2), () => print("número 2"));
  }
  void numero3(){
    print("número 3");
  }
