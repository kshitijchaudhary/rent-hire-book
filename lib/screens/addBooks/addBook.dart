import 'package:ekitaab_pasal/models/book.dart';
import 'package:ekitaab_pasal/models/notifiers/book_notifier.dart';
import 'package:ekitaab_pasal/widgets/buttons/confirm_button.dart';
import 'package:ekitaab_pasal/widgets/input/book_form.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class AddBookForm extends StatefulWidget {
  final Book book;

  AddBookForm({this.book});

  @override
  _AddBookFormState createState() => _AddBookFormState();
}

class _AddBookFormState extends State<AddBookForm> {
  final _formKey = GlobalKey<FormState>();
  var _title = '';
  var _author = '';
  var _description = '';
  var _rating;
  var _coverUrl = '';
  var _category = '';

  @override
  void initState() {
    super.initState();
    _rating = widget.book?.rating ?? 0.0;
  }

  @override
  Widget build(BuildContext context) {
    //var bookNotifier = Provider.of<BookNotifier>(context);
      return Scaffold(
            appBar: AppBar(
              title: Text('Rent Your Book'),
              backgroundColor: Colors.green,
            ),
    body: SingleChildScrollView(
      child: Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          BookTextFormField(
            labelText: 'Title',
            errorText: 'Enter a book title',
            initialValue: widget.book?.title,
            onSaved: (value) => _title = value,
          ),
          BookTextFormField(
            labelText: 'Author',
            errorText: 'Enter an author',
            onSaved: (value) => _author = value,
            initialValue: widget.book?.author,
          ),
          BookTextFormField(
            labelText: 'Description',
            errorText: 'Enter a description',
            initialValue: widget.book?.description,
            onSaved: (value) => _description = value,
          ),
          BookTextFormField(
            labelText: 'Select Book Category',
            errorText: 'Enter a Book Category',
            initialValue: widget.book?.coverUrl,
            onSaved: (value) => _coverUrl = value,
          ),
          BookTextFormField(
            labelText: 'Enter Rent Price per month',
            errorText: 'Enter a rent Price per month',
            initialValue: widget.book?.category,
            onSaved: (value) => _category = value,
          ),
          BookTextFormField(
            labelText: 'Upload a photo',
            errorText: 'Please upload a photo',
            initialValue: widget.book?.category,
            onSaved: (value) => _category = value,
          ),
        //  InputDecorator(
        //     decoration: InputDecoration(
        //       labelText: 'Rating',
        //       labelStyle: TextStyle(color: Colors.grey),
        //       suffixIcon: Chip(
        //         label: Text(_rating.toStringAsFixed(1)),
        //       ),
        //     ),
        //     child: Slider(
        //       value: _rating.roundToDouble(),
        //       min: 0.0,
        //       max: 10.0,
        //       divisions: 10,
        //       onChanged: (value) => setState(() => _rating = value),
        //     ),
        //  ),
          Padding(
            padding: const EdgeInsets.only(top: 22.0),
            child: ConfirmButton(
              text: widget.book == null ? 'Add Book' : "Update Book",
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  final book = Book(_title, _author, _description, _coverUrl,
                      _category, _rating);

                  // if (widget.book == null) {
                  //   bookNotifier.addBook(book);
                  //   Navigator.pop(context);
                  // } else {
                  //   bookNotifier.updateBook(widget.book, book);
                  //   Navigator.of(context).pop();
                  // }
                }
              },
            ),
          ),
        ],
      ),
    ),
            ),
      );
  }
}