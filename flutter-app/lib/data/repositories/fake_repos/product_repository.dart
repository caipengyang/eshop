import 'package:openflutterecommerce/data/model/filter_rules.dart';
import 'package:openflutterecommerce/data/model/product.dart';
import 'package:openflutterecommerce/data/model/sort_rules.dart';
import 'package:openflutterecommerce/data/repositories/abstract/product_repository.dart';
import 'package:openflutterecommerce/config/theme.dart';

class FakeProductRepository extends ProductRepository {
  @override
  Future<FilterRules> getPossibleFilterOptions(int categoryId) {
    // TODO: implement getPossibleFilterOptions
    throw UnimplementedError();
  }

  @override
  Future<Product> getProduct(int id) {
    // TODO: implement getProduct
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getProducts({int pageIndex = 0, int pageSize = AppConsts.page_size, int categoryId = 0, SortRules sortRules = const SortRules(), required FilterRules? filterRules}) {
    // TODO: implement getProducts
    print("getProducts");
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getSimilarProducts(int productId, {int pageIndex = 0, int pageSize = AppConsts.page_size}) {
    // TODO: implement getSimilarProducts
    throw UnimplementedError();
  }

}