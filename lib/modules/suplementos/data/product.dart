import 'package:gym/modules/suplementos/data/i_product.dart';
import 'package:gym/modules/suplementos/domain/entities/product.dart';

class Product implements IProduct{

  @override
  Future<List<ProductEntity>> getProducts()async {

    return [
      ProductEntity(name: 'name', category: 'category', value: '', imageLink: ''),
      ProductEntity(name: 'name', category: 'category', value: '', imageLink: ''),
    ] ;
  }

}