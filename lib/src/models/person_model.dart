class PersonModel {
  final int? id;
  final String nome;
  final int idade;

  PersonModel({this.id, required this.idade, required this.nome});

  Map<String, dynamic> toMap() => {
    'id' : id,
    'nome' : nome,
    'idade' : idade
  };


  factory PersonModel.fromMap(Map<String, dynamic> map) => PersonModel(
    id: map['id'], 
    idade: map['nome'], 
    nome: map['idade']
    );
}