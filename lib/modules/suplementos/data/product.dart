import 'package:gym/core/service_http/i_service_http.dart';
import 'package:gym/modules/suplementos/data/i_product.dart';
import 'package:gym/modules/suplementos/domain/entities/product.dart';

class Product implements IProduct {
  final IServiceHttp http;
  Product({required this.http});

  @override
  Future<List<ProductEntity>> getProducts() async {
    final res = await http.get(
        url:
            'https://api.mockfly.dev/mocks/9aeb9b36-f11c-43f3-a6bc-572407786608/api/suplementos');

    return List.from(res.body).map((e) => ProductEntity.fromJson(e)).toList();
  }
}
