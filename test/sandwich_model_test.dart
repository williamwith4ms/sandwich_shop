import 'package:flutter_test/flutter_test.dart';
import 'package:sandwich_shop/models/sandwich.dart';

void main() {
  group('Sandwich model tests', () {
    test('creates Sandwich instance with given properties', () {
      const sandwich = Sandwich(
        id: 'veggie',
        name: 'Veggie Sub',
        description: 'Loaded with fresh vegetables.',
        price: 5.25,
        imagePath: 'assets/images/six_inch.jpeg',
      );
      expect(sandwich.id, 'veggie');
      expect(sandwich.name, 'Veggie Sub');
      expect(sandwich.description, 'Loaded with fresh vegetables.');
      expect(sandwich.price, 5.25);
      expect(sandwich.imagePath, 'assets/images/six_inch.jpeg');
    });

    test("Formatted price returns correct format", () {
      const sandwich = Sandwich(
        id: 'veggie',
        name: 'Veggie Sub',
        description: 'Loaded with fresh vegetables.',
        price: 5.25,
        imagePath: 'assets/images/six_inch.jpeg',
      );
      expect(sandwich.formattedPrice, '£5.25');
    });
  });
}
