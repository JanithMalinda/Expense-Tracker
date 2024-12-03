import 'package:expense_tracker/models/expence.dart';
import 'package:flutter/material.dart';

class ExpenceItem extends StatelessWidget {
  const ExpenceItem({super.key, required this.expence});

  final ExpenceModel expence;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expence.amount,
              style: TextStyle(
                fontSize: 20,
                color: (expence.category== Category.income)? Colors.green: Colors.red,
              ),
            ),
            // Text(expence.id),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  expence.decsription,
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(CategoryIcons[expence.category],color: (expence.category== Category.income)? Colors.green: Colors.red ,),
                    const SizedBox(width: 8),
                    Text(expence.formattdeDateValue),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
