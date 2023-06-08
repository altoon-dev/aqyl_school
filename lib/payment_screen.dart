import 'package:flutter/material.dart';
import 'api.dart';

class PaymentScreen extends StatelessWidget {
  final ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              Map<String, dynamic> paymentData = {
                "name":"tshirt",
                "price":150,
                "quantity":3
              };
              final response = await apiService.createPayment(paymentData);
              print('Payment created: ${response.data}');

            } catch (error) {
              print('Error creating payment: $error');
            }
          },
          child: Text('Create Payment'),
        ),
      ),
    );
  }
}
