class Service {
  final String img;
  final String serviceName;

  Service({required this.img, required this.serviceName});
}

List<Service> serviceList = [
  Service(
    img: 'assets/bill_payment.png',
    serviceName: 'Bill Payment',
  ),
  Service(
    img: 'assets/airlines.png',
    serviceName: 'Airlines Ticketing',
  ),
  Service(
    img: 'assets/wallet_load.png',
    serviceName: 'Wallet Load',
  ),
  Service(
    img: 'assets/mobile_topup.png',
    serviceName: 'Mobile Topup',
  ),
  Service(
    img: 'assets/cheque_payment.png',
    serviceName: 'Cheque Book',
  ),
  Service(
    img: 'assets/fd_loan.png',
    serviceName: 'FD Loan',
  ),
  Service(
    img: 'assets/fixed_deposit.png',
    serviceName: 'Fixed Deposit',
  ),
  Service(
    img: 'assets/qr.png',
    serviceName: 'QR Withdraw',
  ),
];
