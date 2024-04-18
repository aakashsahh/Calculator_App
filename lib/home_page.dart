import 'package:calculator_provider/constants/colors.dart';
import 'package:calculator_provider/providers/calc_provider.dart';
import 'package:calculator_provider/widgets/calc_button.dart';
import 'package:calculator_provider/widgets/text_field.dart';
import 'package:calculator_provider/widgets/widgets_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorProvider>(builder: (context, provider, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Calculator App"),
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        body: Column(
          children: [
             CustomTextField(controller: provider.compController,),
            const Spacer(),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.6,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) => buttonList[index]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) => buttonList[index + 4]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) => buttonList[index + 8]),
                  ),
                  //for equals button and last two rows
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(3, (index) => buttonList[index + 12]),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(3, (index) => buttonList[index + 15]),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const CalculateButton(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
