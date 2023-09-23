import 'package:openflutterecommerce/data/model/cart_item.dart';
import 'package:openflutterecommerce/data/model/promo.dart';
import 'package:openflutterecommerce/data/repositories/abstract/cart_repository.dart';
import 'package:openflutterecommerce/data/repositories/cart_repository_impl.dart';
import 'package:openflutterecommerce/domain/usecases/base_use_case.dart';
import 'package:openflutterecommerce/locator.dart';

abstract class GetCartProductsUseCase
  implements BaseUseCase<GetCartProductsResult, GetCartProductParams> {}

    
class GetCartProductsUseCaseImpl implements GetCartProductsUseCase {
  @override
  Future<GetCartProductsResult> execute(GetCartProductParams params) async {
    try {
      CartRepository cartRepository = sl();
      if ( params.appliedPromo != null ) {
        await cartRepository.setPromo(params.appliedPromo);
      }
      List<CartItem> cartProducts = CartRepositoryImpl.cartProductDataStorage.items;
      
      return GetCartProductsResult(
        cartItems: cartProducts,
        totalPrice: cartRepository.getTotalPrice(),
        calculatedPrice: cartRepository.getCalculatedPrice(),
        appliedPromo: await cartRepository.getAppliedPromo(),
        result: true, exception: null!);
    } catch (e) {
      return GetCartProductsResult( 
        cartItems: [], 
        totalPrice: 0,
        calculatedPrice: 0,
        result: false,
        exception: GetCartProductsException(), appliedPromo: null!
      );
    }
  }

}

class GetCartProductParams {
  final Promo? appliedPromo;

  GetCartProductParams({this.appliedPromo});
}

class GetCartProductsException implements Exception {}

class GetCartProductsResult extends UseCaseResult {
  final List<CartItem> cartItems;
  final double totalPrice;
  final double calculatedPrice;
  final Promo appliedPromo;

  GetCartProductsResult({
    required this.cartItems,
    required this.totalPrice,
    required this.calculatedPrice,
    required this.appliedPromo,
    required Exception exception,
    required bool result
  }) 
    : super(exception: exception, result: result);
}