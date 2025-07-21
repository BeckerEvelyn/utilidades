import 'package:flutter/material.dart';

import 'package:utilidades/src/models/person_model.dart';
import 'package:utilidades/src/services/sqlitle_service.dart';

class PersonController extends ChangeNotifier{
  final SqlitleService _db = SqlitleService();

  final List<PersonModel> _persons = [];

  List<PersonModel> get persons => List.unmodifiable(_persons);

  Future<void> loadPersons() async {
    _persons.clear();
    _persons.addAll(await _db.getAllPerson());
    notifyListeners();
  }

  Future<void> addPerson(String nome, int idade) async {
    final person = PersonModel(nome: nome, idade: idade);
    await _db.isertPerson(person);
    await loadPersons();
  }

  Future<void> deletePerson(int id) async {
    await _db.deletePerson(id);
    await loadPersons();
  }
}