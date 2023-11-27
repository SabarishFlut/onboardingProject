import 'package:flutter/material.dart';
import 'package:flutter_screens/expense_tracker/modelsExp1.dart';
//UI page
class ExpenseItem extends StatelessWidget {
  const ExpenseItem({Key? key, required this.expense}) : super(key: key);

  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Card(child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      child: Column(
        children: [
          Text("${expense.title}"),
          SizedBox(height: 4,),
          Row(
            children: [
              Text("\$ ${expense.amount}"),
              Spacer(),
              Row(
                children: [
                  Icon(categoryIcons[expense.category]),
                  SizedBox(width: 8,),
                  Text(expense.formattedDate)
                ],
              ),
            ],
          )
        ],
      ),
      //child: Text("${expense.title}"),
    ));
  }
}
