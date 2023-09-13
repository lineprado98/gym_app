import 'package:get_it/get_it.dart';
import 'package:gym/core/service_http/i_service_http.dart';
import 'package:gym/core/service_http/service_http_dio.dart';
import 'package:gym/modules/suplementos/data/i_product.dart';
import 'package:gym/modules/suplementos/data/product.dart';
import 'package:gym/modules/suplementos/domain/usecases/listar_products.dart';
import 'package:gym/modules/suplementos/presenter/store/suplementos_store.dart';

GetIt getIt = GetIt.instance;

class ServiceLocator {
  static void setup() {
    getIt.registerFactory<IServiceHttp>(() => ServiceHttpDio());
    getIt.registerFactory<IProduct>(() => Product(http: getIt<IServiceHttp>()));

    getIt.registerFactory<ListarProducts>(
        () => ListarProducts(repository: getIt<IProduct>()));

    getIt.registerSingleton<SuplementosStore>(
        SuplementosStore(listarProductsUseCase: getIt<ListarProducts>()));
  }
}
