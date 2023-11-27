import 'package:flutter/material.dart';
import 'package:flutter_screens/expense_tracker/modelsExp1.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key, required this.onAddExpense}) : super(key: key);

  final void Function(Expense expense) onAddExpense;

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _selectedDate;
  Category _selectedCategory = Category.food;

  void _presentDate() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);

    final pickedDate = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstDate,
        lastDate: now);
    print("${pickedDate}**22");
    setState(() {
      _selectedDate = pickedDate;
      print("${pickedDate}**26 after change state");
      print("${_selectedDate}**27 after change state");
    });
  }

  void _submitExpenses() {
    final enteredText = double.tryParse(_amountController.text);
    final amountIsValid = enteredText == null || enteredText <= 0;
    if (_titleController.text.trim().isEmpty ||
        amountIsValid ||
        _selectedDate == null) {
      showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                title: Text("Invalid Input"),
                content: Text(
                    "Please make sure a valid title , amount , date and category was entered"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(ctx);
                      },
                      child: Text("Okay"))
                ],
              ));
      return;
    }
    widget.onAddExpense(Expense(
        title: _titleController.text,
        amount: enteredText,
        date: _selectedDate!,
        category: _selectedCategory));
    Navigator.pop(context);
  }

  var _enteredTitle = "";

  void _saveTitleInput(String inputValue) {
    _enteredTitle = inputValue;
  }

  @override
  void dispose() {
    _amountController.dispose();
    _titleController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;
    return LayoutBuilder(builder: (ctx,constrains){
      final width= constrains.maxWidth;
      return SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18,48,18,16),
            child: Column(
              children: [
                TextField(
                  controller: _titleController,
                  //onChanged: _saveTitleInput,
                  maxLength: 50,
                  decoration: InputDecoration(label: Text("Title")),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _amountController,
                        //onChanged: _saveTitleInput,
                        //maxLength: 50,
                        keyboardType: TextInputType.numberWithOptions(),
                        decoration: InputDecoration(
                            prefixText: "\$ ", label: Text("Amount")),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(_selectedDate == null
                              ? "No Date Selected"
                              : formatter.format(_selectedDate!)),
                          IconButton(
                              onPressed: () {
                                _presentDate();
                              },
                              icon: Icon(Icons.calendar_month))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton(
                        value: _selectedCategory,
                        items: Category.values
                            .map((category) => DropdownMenuItem(
                            value: category,
                            child: Text(category.name.toUpperCase())))
                            .toList(),
                        onChanged: (value) {
                          if (value == null) {
                            return;
                          }
                          setState(() {
                            _selectedCategory = value;
                          });
                          print("${value}**86");
                        }),
                    Spacer(),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Cancel",
                          //style: TextStyle(color: Colors.purple.shade900),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          _submitExpenses();
                          print("${_enteredTitle}**33");
                          print("${_titleController.text}**33");
                          print("${_amountController.text}**33");
                        },
                        child: Text("Save Expense")),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
