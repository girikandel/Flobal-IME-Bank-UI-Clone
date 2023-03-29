import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  final String image, date, amount, transactionName, remarks;
  const TransactionWidget({
    Key? key,
    required this.image,
    required this.date,
    required this.amount,
    required this.transactionName,
    required this.remarks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: ListTile(
            leading: Image.asset(image),
            title: Text(transactionName),
            subtitle: Text("$date . $remarks"),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Text(amount),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'Success',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(18),
                ),
              )
            ],
          ),
        ),
        const Expanded(
          child: Icon(
            Icons.more_vert,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
