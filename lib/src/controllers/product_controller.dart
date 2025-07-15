import 'package:flutter/widgets.dart';
import 'package:utilidades/services/product_service.dart';
import 'package:utilidades/src/models/product_model.dart';

class ProductController {
  final ProductService _service = ProductService();

  Future<List<ProductModel>> fetchProdutos(BuildContext context) => _service.getAll(context);
  Future<void> criarProduto(ProductModel produto) => _service.create(produto);
  Future<void> atualizarProuro(ProductModel produto) => _service.update(produto);
  Future<void> deletarProduto(int id) => _service.delete(id);
  
}