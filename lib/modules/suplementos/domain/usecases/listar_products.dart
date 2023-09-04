import 'package:gym/modules/suplementos/data/i_product.dart';
import 'package:gym/modules/suplementos/domain/entities/product.dart';

class ListarProducts {
  final IProduct repository;
  ListarProducts({required this.repository});

  Future<List<ProductEntity>> listar() async {
    return repository.getProducts();
  }
}
