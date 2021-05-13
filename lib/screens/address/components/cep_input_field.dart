import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CepInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        TextFormField(
          decoration: const InputDecoration(
              isDense: true, labelText: 'CEP', hintText: '12.345-678'),
          inputFormatters: [
            // ignore: deprecated_member_use
            WhitelistingTextInputFormatter.digitsOnly,
          ],
          keyboardType: TextInputType.number,
        ),
        // ignore: deprecated_member_use
        RaisedButton(
          onPressed: () {},
          textColor: Colors.white,
          color: primaryColor,
          disabledColor: primaryColor.withAlpha(100),
          child: const Text('Buscar CEP'),
        ),
      ],
    );
  }
}
