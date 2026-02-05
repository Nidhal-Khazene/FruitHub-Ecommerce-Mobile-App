import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/payment_review_ticket.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/review_payment_verified_ticket.dart';
import 'package:flutter/material.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        const Text('ملخص الطلب :', style: AppStyles.bold13),
        const SizedBox(height: 8),
        const PaymentReviewTicket(),
        const SizedBox(height: 16),
        const Text('يرجي تأكيد  طلبك', style: AppStyles.bold13),
        const SizedBox(height: 8),
        ReviewPaymentVerifiedTicket(),
      ],
    );
  }
}
