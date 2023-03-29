import 'package:flutter/material.dart';
import 'package:globalbankuiclone/constants/colors.dart';
import 'package:globalbankuiclone/models/service_model.dart';
import 'package:globalbankuiclone/models/transaction_model.dart';
import 'package:globalbankuiclone/widgets/carousel_widget.dart';
import 'package:globalbankuiclone/widgets/service_widget.dart';
import 'package:globalbankuiclone/widgets/transaction_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            height: 350,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo.jpg'),
                opacity: 0.02,
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                //Account Number and interest Rate
                accountdetails(),
                //Actual Balance and Accured Interest
                actualAccured(),
                //Availabe Balance and visibility button
                availableBalance(),
                //Fund Transfer view statement
                viewStatementFundTransfer(),

                const SizedBox(height: 10),
                //Transactions
                transactions(),
              ],
            ),
          ),

          const Divider(color: Colors.white),

          //Services
          services(),
          const Divider(color: Colors.white),
          //Digital Transactions
          digitalTransactions(),
          const Divider(color: Colors.white),

          //Image Carousel
          const CarouselWidget(),
        ],
      ),
    );
  }
}

//Account number and Interest rate
accountdetails() {
  return Row(
    children: [
      const Expanded(
        flex: 5,
        child: SizedBox(
          height: 70,
          child: ListTile(
            title: Text('21107090009987'),
            subtitle: Text('GLOBAL NORMAL SAVING (NPR)'),
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: SizedBox(
          height: 70,
          child: ListTile(
            title: Container(
              height: 30,
              alignment: Alignment.center,
              child: const Text('6.03%'),
              decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            subtitle: const Text('Interest Rate'),
          ),
        ),
      ),
    ],
  );
}

//Actual Balance and Accured Interest
actualAccured() {
  return Row(
    children: [
      const Expanded(
        flex: 5,
        child: SizedBox(
          height: 70,
          child: ListTile(
            title: Text(
              '12672.9',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('Actual Balance'),
          ),
        ),
      ),
      Expanded(
        flex: 3,
        child: SizedBox(
          height: 70,
          child: ListTile(
            title: Container(
              height: 30,
              alignment: Alignment.center,
              child: const Text(
                '451.02',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            subtitle: const Text('Accured Interest'),
          ),
        ),
      ),
    ],
  );
}

//available Balance and Visibility Icon
availableBalance() {
  return Row(
    children: [
      const Expanded(
        flex: 5,
        child: SizedBox(
          height: 70,
          child: ListTile(
            title: Text(
              '13672.9',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            subtitle: Text('Availabe Balance'),
          ),
        ),
      ),
      Expanded(
        flex: 3,
        child: SizedBox(
          height: 70,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.visibility,
              color: Kcolor.buttonColor,
            ),
          ),
        ),
      ),
    ],
  );
}

//View Statement and Fund Transfer
viewStatementFundTransfer() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      const SizedBox(width: 10),
      Expanded(
        flex: 3,
        child: Container(
          alignment: Alignment.center,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.blue,
            ),
          ),
          // height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/transfer.png',
                height: 35,
                width: 35,
                color: Colors.blue,
              ),
              const Text(
                "FUND TRANSFER",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(width: 10),
      Expanded(
        flex: 3,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.blue,
            ),
          ),
          // height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/statement.png',
                height: 35,
                width: 35,
                color: Colors.blue,
              ),
              const Text(
                "View Statement",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(width: 10),
      Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.blue,
          ),
        ),
        // height: 50,
        child: const Icon(
          Icons.more_horiz,
          color: Colors.blue,
        ),
      ),
      const SizedBox(width: 10),
    ],
  );
}

//Trasnsaction
transactions() {
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
    height: 50,
    decoration: BoxDecoration(
      color: Colors.black26,
      borderRadius: BorderRadius.circular(7),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(Icons.auto_graph_outlined),
            SizedBox(width: 10),
            Text(
              "Last 30 Days Transaction",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Icon(Icons.arrow_drop_down),
      ],
    ),
  );
}

//Services
services() {
  return SizedBox(
    height: 200,
    // constraints: const BoxConstraints.expand(),
    child: SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Services",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_right_outlined),
              ],
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 200,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              // scrollDirection: Axis.vertical,
              itemCount: serviceList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: ((context, index) {
                var service = serviceList[index];
                return ServicesWidget(
                  image: service.img,
                  serviceName: service.serviceName,
                );
              }),
            ),
          ),
        ],
      ),
    ),
  );
}

//Digital Transaction
digitalTransactions() {
  return SizedBox(
    height: 250,
    // constraints: const BoxConstraints.expand(),
    child: SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Digital Transactions",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_right_outlined),
              ],
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 220,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: transactionsList.length,
              itemBuilder: ((context, index) {
                var transaction = transactionsList[index];
                return TransactionWidget(
                  image: transaction.image,
                  date: transaction.date,
                  amount: transaction.amount,
                  transactionName: transaction.transactionName,
                  remarks: transaction.remarks,
                );
              }),
            ),
          ),
        ],
      ),
    ),
  );
}
