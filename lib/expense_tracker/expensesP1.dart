import 'package:flutter/material.dart';
import 'package:flutter_screens/expense_tracker/expenses_List.dart';
import 'package:flutter_screens/expense_tracker/new_Expense.dart';
import 'modelsExp1.dart';

class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Expenses',
      amount: 20.57,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Cinema',
      amount: 15.57,
      category: Category.liesure,
      date: DateTime.now(),
    ),
  ];

  void _openAddExpenseOverley() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) => NewExpense(
              onAddExpense: _addExpense,
            ));
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);
    setState(() {
      _registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: Duration(seconds: 3),
      content: Text('Expense Deleted'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          setState(() {
            _registeredExpenses.insert(expenseIndex, expense);
          });
        },
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    Widget maincontent = Center(
      child: Text("No Expenses Found .Start Add Some"),
    );
    if (_registeredExpenses.isNotEmpty) {
      maincontent = ExpensesList(
        expense: _registeredExpenses,
        onRemoveExpense: _removeExpense,
      );
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        //backgroundColor: Colors.white,
        title: Text(
          "Flutter Expense Tracker",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: _openAddExpenseOverley,
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          Text("Chart"),
          Expanded(
            child: maincontent,
          )
        ],
      ),
    );
  }
}
