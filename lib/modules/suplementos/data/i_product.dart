import 'package:gym/modules/suplementos/domain/entities/product.dart';

abstract class IProduct {

  Future<List<ProductEntity>> getProducts();

}