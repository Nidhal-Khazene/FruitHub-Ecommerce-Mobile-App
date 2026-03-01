import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failures.dart';
import 'package:ecommerce_app/core/repos/orders_repo/order_repo.dart';
import 'package:ecommerce_app/core/services/database_service.dart';
import 'package:ecommerce_app/core/utils/backend_breakpoint.dart';
import 'package:ecommerce_app/features/checkout/data/models/order_model.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';

class OrderRepoImpl extends OrderRepo {
  final DatabaseService databaseService;

  OrderRepoImpl({required this.databaseService});

  @override
  Future<Either<Failure, void>> addOrder(OrderInputEntity orderEntity) async {
    try {
      await databaseService.addData(
        path: BackendBreakPoint.addOrder,
        data: OrderModel.fromEntity(orderEntity).toJson(),
      );
      return const Right(null);
    } catch (_) {
      return Left(ServerFailure(message: "حدث خطأ في إضافة طلب الشراء"));
    }
  }
}
