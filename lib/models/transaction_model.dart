class TransactionModel {
  final String image, date, amount, transactionName, remarks;

  TransactionModel(
      {required this.image,
      required this.date,
      required this.amount,
      required this.transactionName,
      required this.remarks});
}

List<TransactionModel> transactionsList = [
  TransactionModel(
    image: 'assets/fone_pay.png',
    date: '28 Aug, 2022',
    amount: '-600.00',
    transactionName: 'FONE PAY',
    remarks: 'ANIL KANDEL',
  ),
  TransactionModel(
    image: 'assets/bank.png',
    date: '04 Aug, 2022',
    amount: '-4000.00',
    transactionName: 'Inter Bank Transfer',
    remarks: 'GIRIJA PRASAD KANDEL',
  ),
  TransactionModel(
    image: 'assets/ime_pay.png',
    date: '28 jul, 2022',
    amount: '-1500.00',
    transactionName: 'Load to Wallet',
    remarks: '9812212482',
  ),
];
