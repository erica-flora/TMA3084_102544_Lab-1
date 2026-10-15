import 'dart:io';

void main() {
  String choice = 'yes';

  while (choice.toLowerCase() == 'yes') {
    double price = 0;

    print('\nPizza Price: Small = 5 USD, Medium = 7 USD, Large = 10 USD');
    print('Please enter your pizza size (small, medium, or large):');

    String pizzaSize = stdin.readLineSync()!.toLowerCase();

    print('How many pizzas do you want of $pizzaSize?');
    int quantity = int.parse(stdin.readLineSync()!);

    switch (pizzaSize) {
      case 'small':
        price = 5;
        break;

      case 'medium':
        price = 7;
        break;

      case 'large':
        price = 10;
        break;

      default:
        print('Invalid pizza size!');
        continue;
    }

    double total = price * quantity;

    print('\nOrder Summary');
    print('Pizza Size: $pizzaSize');
    print('Quantity: $quantity');
    print('Total Payment: \$${total.toStringAsFixed(2)}');

    print('\nDo you want to order again? (yes/no)');
    choice = stdin.readLineSync()!;
  }

  print('Thank you for your order!');
}
