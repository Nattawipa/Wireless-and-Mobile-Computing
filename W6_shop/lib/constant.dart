const SushiMenu = [
  {
    "name": "Kani Kama Nigiri",
    "price": 30,
    "image": 'assets/images/1Nigiri.png'
  },
  {
    "name": "Hamachi Nigiri",
    "price": 70,
    "image": 'assets/images/2Hamachi.jpg'
  },
  {"name": "Saba Bouzushi", "price": 60, "image": 'assets/images/3Saba.jpg'},
  {"name": "Ebi Nigiri", "price": 70, "image": 'assets/images/4ebi.jpg'},
  {"name": "Unagi Nigiri", "price": 60, "image": 'assets/images/5Unagi.jpg'},
  {"name": "Tamago Nigiri", "price": 30, "image": 'assets/images/6Tamago.jpg'},
  {"name": "Maguro Nigiri", "price": 60, "image": 'assets/images/7Maguro.png'},
  {
    "name": "Kani Salad Nigiri",
    "price": 40,
    "image": 'assets/images/8Kani.jpg'
  },
  {
    "name": "Aburi Salmon Nigiri",
    "price": 70,
    "image": 'assets/images/9Aburi.png'
  },
  {"name": "Salmon Nigiri", "price": 60, "image": 'assets/images/10Salmon.jpg'}
];

int totalPrice = 0;
void calculateTotalPrice() {
  totalPrice = 0;
  cart_list.forEach((ele) => {totalPrice += ele['price']});
}

List cart_list = [];
