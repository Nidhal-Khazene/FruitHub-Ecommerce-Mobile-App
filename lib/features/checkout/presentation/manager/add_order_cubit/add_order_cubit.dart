import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/repos/orders_repo/order_repo.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';
import 'package:meta/meta.dart';

part 'add_order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit({required this.orderRepo}) : super(AddOrderInitial());
  final OrderRepo orderRepo;

  Future<void> addOrder(OrderEntity orderEntity) async {
    emit(AddOrderLoading());
    var result = await orderRepo.addOrder(orderEntity);
    result.fold(
      (failure) => emit(AddOrderFailure(errorMessage: failure.message)),
      (right) => emit(AddOrderSuccess()),
    );
  }
}
