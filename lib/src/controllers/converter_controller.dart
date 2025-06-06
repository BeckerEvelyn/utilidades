import 'package:utilidades/src/models/converter_model.dart';

class ConverterController {
  //late indica que ConvertModel será inicializado posteriomente
  late ConverterModel _model;

  void setInputValue(String value){
    value = value.replaceAll(',', '.');
    final parsedValue = double.tryParse(value) ?? 0.0;
    _model = ConverterModel(
      fromUnit: _model.fromUnit, 
      inputValue: parsedValue, 
      toUnit: _model.toUnit
      );
  }

  void setUnits(Unit from, Unit to){
    _model = ConverterModel(
      fromUnit: from, 
      inputValue: _model.inputValue, 
      toUnit: to
      );
  }

  void InitializeModel(){
    _model = ConverterModel(
      fromUnit: Unit.meter, 
      inputValue: 0.0, 
      toUnit: Unit.centimeter
      );
  }

  String get result => _model.convert().toStringAsFixed(2);
}