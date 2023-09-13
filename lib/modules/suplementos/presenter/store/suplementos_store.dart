import 'package:gym/core/service_http/i_service_http.dart';
import 'package:gym/core/service_http/service_http_dio.dart';
import 'package:gym/modules/suplementos/data/i_product.dart';
import 'package:gym/modules/suplementos/data/product.dart';
import 'package:gym/modules/suplementos/domain/entities/product.dart';
import 'package:gym/modules/suplementos/domain/usecases/listar_products.dart';
import 'package:mobx/mobx.dart';
part 'suplementos_store.g.dart';

class SuplementosStore = _SuplementosStoreBase with _$SuplementosStore;

abstract class _SuplementosStoreBase with Store {
  ListarProducts listarProductsUseCase;
  _SuplementosStoreBase({required this.listarProductsUseCase});

  @observable
  bool isLoading = false;

  @action
  void setIsLoading(value) {
    isLoading = value;
  }

//obs lista
//ObservableList res = ObservableList<ProductEntity>();
  List<ProductEntity> res = [];

  Future<void> getProducts() async {
    setIsLoading(true);
    await Future.delayed(Duration(seconds: 2));
    res = await listarProductsUseCase.listar();
    setIsLoading(false);
  }
}
