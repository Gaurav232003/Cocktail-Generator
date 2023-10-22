double height = 0;
double width = 0;

class Recipes {
  Recipes(
      {required this.name,
      required this.id,
      required this.imgUrl,
      required this.ingredients,
      required this.instructions,
      required this.userRating,
      required this.total,
      required this.n});
  List<String> ingredients;
  List<String> instructions;
  String name;
  String imgUrl;
  int id;
  List<String> userRating;
  int total, n;
}

List<String> recipes1img = [];
List<String> images = [];

List<Recipes> recipes1 = [];
// List<Recipes> recipes1 = [
//   Recipes(
//       name: 'Margarita',
//       id: 1,
//       imgUrl: '',
//       ingredients: [
//         'Tequila',
//         'Triple Sec',
//         'Fresh Lime Juice',
//         'Agave Nectar'
//       ],
//       instructions: [
//         'Rim the glass with salt.',
//         'In a shaker, combine 2 oz tequila,1 oz triple sec,1 oz lime juice, and 1/2 oz agave nectar.',
//         'Shake with ice and strain into the glass.'
//       ],
//       userRating: ['gaurav2@dev.in'],
//       total: 43,
//       n: 10),
//   Recipes(
//       name: 'Piña Colada',
//       id: 2,
//       imgUrl: '',
//       ingredients: [
//         'White Rum',
//         'Pineapple Juice',
//         'Coconut Cream',
//         'Pineapple slice',
//         'cherry'
//       ],
//       instructions: [
//         'Blend 2 oz rum,4 oz pineapple juice, and 2 oz coconut cream with ice until smooth.',
//         'Pour into a chilled glass.',
//         'Garnish with a pineapple slice and cherry.'
//       ],
//       userRating: ['gaurav2@dev.in'],
//       total: 80,
//       n: 20),
//   Recipes(
//       name: 'Mojito',
//       id: 3,
//       imgUrl: '',
//       ingredients: [
//         'White Rum',
//         'Fresh Lime Juice',
//         'Sugar',
//         'Mint Leaves',
//         'Soda Water'
//       ],
//       instructions: [
//         'Muddle 6-8 mint leaves and 2 teaspoons sugar in a glass.',
//         'Add 1 oz lime juice 2 oz and rum.',
//         'Fill the glass with ice and top up with soda water.',
//         'Stir gently and garnish with a mint sprig.'
//       ],
//       userRating: ['gaurav2@dev.in'],
//       total: 27,
//       n: 7),
//   Recipes(
//       name: 'Cosmopolitan',
//       id: 4,
//       imgUrl: '',
//       ingredients: [
//         'Vodka',
//         'Triple Sec',
//         'Cranberry Juice',
//         'Fresh Lime Juice',
//         'Orange twist'
//       ],
//       instructions: [
//         'Shake 1.5 oz Vodka,1 oz Triple Sec,1/2 oz Cranberry Juice and 1/2 oz Lime Juice with ice.',
//         'Strain into a chilled martini glass.',
//         'Garnish with an orange twist.',
//       ],
//       userRating: ['gaurav2@dev.in'],
//       total: 38,
//       n: 9),
// ];

List<Recipes> recipes2 = [
  Recipes(
      name: 'Virgin Mojito',
      id: 1,
      imgUrl: '',
      ingredients: [
        'Fresh Lime Juice',
        'Sugar',
        'Mint Leaves',
        'Soda Water',
      ],
      instructions: [
        '6-8 Fresh Muddle mint leaves and 2 teaspoons sugar in a glass.',
        'Add 2 oz lime juice.',
        'Fill the glass with ice and top up with soda water.',
        'Stir gently and garnish with a mint sprig.'
      ],
      userRating: ['gaurav2@dev.in'],
      total: 48,
      n: 10),
  Recipes(
      name: 'Shirley Temple',
      id: 2,
      imgUrl: '',
      ingredients: [
        'Ginger Ale',
        'Grenadine Syrup',
        'Maraschino Cherry',
      ],
      instructions: [
        'Fill a glass with ice.',
        'Pour 6 oz ginger ale and 2 oz grenadine syrup over the ice.',
        'Garnish with a maraschino cherry.',
      ],
      userRating: ['gaurav2@dev.in'],
      total: 6,
      n: 2),
  Recipes(
      name: 'Virgin Pina Colada',
      id: 3,
      imgUrl: '',
      ingredients: [
        'Pineapple Juice',
        'Coconut Cream',
        'Pineapple slice',
        'cherry'
      ],
      instructions: [
        'Blend 4 oz pineapple juice and 2 oz coconut cream with ice until smooth.',
        'Pour into a chilled glass.',
        'Garnish with a pineapple slice and cherry.',
      ],
      userRating: ['gaurav2@dev.in'],
      total: 19,
      n: 5),
  Recipes(
      name: 'Nojito (Non-Alcoholic Mojito)',
      id: 4,
      imgUrl: '',
      ingredients: ['Fresh Lime Juice', 'Sugar', 'Mint Leaves', 'Soda Water'],
      instructions: [
        '6-8 Fresh Muddle mint leaves and 2 teaspoons sugar in a glass.',
        'Add 2 oz lime juice.',
        'Fill the glass with ice and top up with soda water.',
        'Stir gently and garnish with a mint sprig.',
      ],
      userRating: ['gaurav2@dev.in'],
      total: 9,
      n: 2),
];

List<String> alcohol = [
  'Tequila',
  'Triple Sec',
  'White Rum',
  'Vodka',
  'Fresh Lime Juice',
  'Pineapple Juice',
  'Coconut Cream',
  'Pineapple slice',
  'cherry',
  'Sugar',
  'Mint Leaves',
  'Soda Water',
  'Cranberry Juice',
  'Orange twist',
  'Ginger Ale',
  'Grenadine Syrup',
  'Maraschino Cherry',
  'Agave Nectar'
];
List<String> nonAlcohol = [
  'Fresh Lime Juice',
  'Pineapple Juice',
  'Coconut Cream',
  'Pineapple slice',
  'cherry',
  'Sugar',
  'Mint Leaves',
  'Soda Water',
  'Cranberry Juice',
  'Orange twist',
  'Ginger Ale',
  'Grenadine Syrup',
  'Maraschino Cherry',
];

List<int> fav = [1, 3];
