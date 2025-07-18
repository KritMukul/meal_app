import 'package:flutter/material.dart';
import 'package:meal_app/providers/filters_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Your Filters')),
      body: Column(
        children: [
          SwitchListTile(
            value: activeFilters[Filter.glutenFree]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.glutenFree, isChecked);
            },
            title: Text(
              'Gluten-Free',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),

            subtitle: Text(
              'Only include gluten-free meals',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),

            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: EdgeInsets.only(left: 34, right: 22),
          ),

          SwitchListTile(
            value: activeFilters[Filter.lactoseFree]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.lactoseFree, isChecked);
            },
            title: Text(
              'Lactose-Free',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),

            subtitle: Text(
              'Only include lactose-free meals',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),

            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: EdgeInsets.only(left: 34, right: 22),
          ),

          SwitchListTile(
            value: activeFilters[Filter.vegetarian]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegetarian, isChecked);
            },
            title: Text(
              'Vegetarian',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),

            subtitle: Text(
              'Only include Vegetarian meals',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),

            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: EdgeInsets.only(left: 34, right: 22),
          ),

          SwitchListTile(
            value: activeFilters[Filter.vegan]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegan, isChecked);
            },
            title: Text(
              'Vegan',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),

            subtitle: Text(
              'Only include Vegan meals',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),

            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: EdgeInsets.only(left: 34, right: 22),
          ),
        ],
      ),
    );
  }
}
