import 'package:flutter/material.dart';

import '../../../components/price_range_and_food_type.dart';
import '../../../constants.dart';

class Info extends StatelessWidget {
  const Info({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1.33,
          child: Image.asset(
            "assets/images/Header-image.png",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: defaultPadding),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Dosa",
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 8),
              Text(
                "Crisp Flattened Batter.",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              const PriceRangeAndFoodtype(
                foodType: ["South Indian"],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
