import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CalculationScreen extends StatefulWidget {
  const CalculationScreen({super.key});

  @override
  State<CalculationScreen> createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  double loanAmount = 0; //เงินกู้
  double IndexController = 0; //อัตราดอกเบี้ย
  double result = 0;
  void calculation() {
    setState(() {
      result = loanAmount + (IndexController * loanAmount) / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculation'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text('จำนวนเงินที่ต้องจ่าย ${result.toStringAsFixed(2)} บาท'),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'วงเงินกู้'),
                      onChanged: (value) {
                        loanAmount = double.parse(value);
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration:
                          InputDecoration(labelText: 'อัตราดอกเบี้ย(%)'),
                      onChanged: (value) {
                        IndexController = double.parse(value);
                      },
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: ElevatedButton.icon(
                        onPressed: calculation,
                        label: Text(
                          'คำนวน',
                        ),
                        icon: Icon(Icons.calculate),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
