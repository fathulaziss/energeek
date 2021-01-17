import 'package:bloc/bloc.dart';
import 'package:energeek/models/models.dart';
import 'package:energeek/services/services.dart';
import 'package:equatable/equatable.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  Future<void> getProducts() async {
    ApiReturnValue<List<Product>> result = await ProductServices.getProducts();

    if (result.value != null) {
      emit(ProductLoaded(result.value));
    } else {
      emit(ProductLoadingFailed(result.message));
    }
  }
}
