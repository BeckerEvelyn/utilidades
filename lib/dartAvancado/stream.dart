/*
 * uma stream representa uma fonte de eventos/dados que ocorrem ao longo do tempo 
 * 
 * QUANDO USAR
 * - quando você precisa escutar atualizações contínuas.
 * - ex: GPS, mensagem do chat, digitação e, tempo real, eventos de usuário
 * 
 * CARACTERÍSTICAS
 * - pode emitir valores com yield
 * - podem durar indefinidamente
 * - podem ser usada com listen ou await for
 * - devemos usar async* para declarar funções assíncronas que retornam uma stream
 */

//exemplo 1 - contador de tempo
Stream<int> contardorTempo() async*{
  for(int i = 0; i < 10; i++){
    await Future.delayed(Duration(seconds: 1));
    yield i; //yield serve como um emisor, ele emite a nova informação para a stream, como se fosse um return. Porém sem finalizar a função
  }
}

//exemplo 2 - simulação de chat
Stream<String> mensagemChat() async*{
  yield "tenho fofocaaaa";
  await Future.delayed(Duration(seconds: 1));
  yield "CONTAAAAAA";
  await Future.delayed(Duration(seconds: 1));
  yield "só pra pra falar pessoalmente";
  await Future.delayed(Duration(seconds: 1));
  yield "PERAI QUE JÁ TO LIGANDO O CARROO";
  await Future.delayed(Duration(seconds: 1));
  yield "vou fazer uma pipoquinha pra nois kkkkkkkk";

}

/* void main(List<String> args) {
  /* contarTempo().listen(
    (event) => print("mensagem: $event"),
    onDone: () => print("stream finalizada")
  ); */

 /*  mensagemChat().listen(
    (mensagem) => print(mensagem),
    onDone: () => print("fim do chat")
  ); */
} */

//exemplos com controle de erro try cath
Stream<int> contarTempo() async*{
  try{
    for (int i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      if (i == 3) {
        throw Exception("erro ao contar número: $i");
      }
      yield i;
    }
  }catch(e){
    print("Erro no contador de tempo $e");
  }
}


void main(List<String> args) {
  contarTempo().listen(
    (event) => print("Número: $event"),
    onError: (erro) => print(erro),
    onDone: () => print("finalizado")
  );
}