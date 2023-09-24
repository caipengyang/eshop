import 'package:openflutterecommerce/data/model/category.dart';
import 'package:openflutterecommerce/data/model/commerce_image.dart';
import 'package:openflutterecommerce/data/repositories/abstract/category_repository.dart';

class FakeCategoryRepository implements CategoryRepository{
  @override
  Future<List<ProductCategory>> getCategories({int parentCategoryId = 0}) {
    // TODO: implement getCategories
    var categories = [
      ProductCategory(
          1000000001,
          parentId: 0,
          isCategoryContainer: false,
          name: CommerceImage.categoryOneDigital().altText,
          description: 'Digital home appliances, high quality and low price, genuine licensed goods, lightning delivery, hot selling items are as low as 10% off!',
          image: CommerceImage.categoryOneDigital()),
      ProductCategory(
          1000000002,
          parentId: 0,
          isCategoryContainer: false,
          name: CommerceImage.categoryOneBaby().altText,
          description: 'Global maternal and child products, super deals starting at 10% off! A safe choice for parents!',
          image: CommerceImage.categoryOneBaby()),
      ProductCategory(
          1000000003,
          parentId: 0,
          isCategoryContainer: false,
          name: CommerceImage.categoryOneBeauty().altText,
          description: 'Global maternal and child products, super deals starting at 10% off! A safe choice for parents!',
          image: CommerceImage.categoryOneBeauty()),
      ProductCategory(
          1000000004,
          parentId: 0,
          isCategoryContainer: false,
          name: CommerceImage.categoryOneHome().altText,
          description: 'Global maternal and child products, super deals starting at 10% off! A safe choice for parents!',
          image: CommerceImage.categoryOneHome()),
      ProductCategory(
          1000000005,
          parentId: 0,
          isCategoryContainer: false,
          name: CommerceImage.categoryOneShoes().altText,
          description: 'Global maternal and child products, super deals starting at 10% off! A safe choice for parents!',
          image: CommerceImage.categoryOneShoes()),
      ProductCategory(
          1000000006,
          parentId: 0,
          isCategoryContainer: false,
          name: CommerceImage.categoryOneSports().altText,
          description: 'Global maternal and child products, super deals starting at 10% off! A safe choice for parents!',
          image: CommerceImage.categoryOneSports()),
    ];
    print('all categories: $categories');
    return Future(() => categories);
  }

  @override
  Future<ProductCategory> getCategoryDetails(int categoryId) {
    // TODO: implement getCategoryDetails
    return Future(() =>
      ProductCategory(
          1000000006,
          parentId: 0,
          isCategoryContainer: false,
          name: CommerceImage.categoryOneSports().altText,
          description: 'Global maternal and child products, super deals starting at 10% off! A safe choice for parents!',
          image: CommerceImage.categoryOneSports()),
    );
  }
}