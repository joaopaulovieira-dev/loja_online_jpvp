import 'package:flutter/material.dart';
import 'package:loja_online_jpvp/common/custom_icon_button.dart';
import 'package:loja_online_jpvp/models/item_size.dart';

class EditItemSize extends StatelessWidget {
  const EditItemSize({this.size, this.onRemove});

  final ItemSize size;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 30,
          child: TextFormField(
            initialValue: size.name,
            decoration: const InputDecoration(
              labelText: 'Título',
              isDense: true,
            ),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Expanded(
          flex: 30,
          child: TextFormField(
            initialValue: size.stock?.toString(),
            decoration: const InputDecoration(
              labelText: 'Estoque',
              isDense: true,
            ),
            keyboardType: TextInputType.number,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Expanded(
          flex: 40,
          child: TextFormField(
            initialValue: size.price?.toStringAsFixed(2),
            decoration: const InputDecoration(
                labelText: 'Preço', isDense: true, prefixText: 'R\$'),
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
          ),
        ),
        CustomIconButton(
          iconData: Icons.remove,
          color: Colors.red,
          onTap: onRemove,
        ),
        const CustomIconButton(
          iconData: Icons.arrow_drop_up,
          color: Colors.black,
        ),
        const CustomIconButton(
          iconData: Icons.arrow_drop_down,
          color: Colors.black,
        )
      ],
    );
  }
}
