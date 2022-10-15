class Currency{
  // {
  // "title": "BAA dirhami",
  // "code": "AED",
  // "cb_price": "2978.51",
  // "nbu_buy_price": "",
  // "nbu_cell_price": "",
  // "date": "15.10.2022"
  // },

  String title;
  String code;
  String cb_price;
  String nbu_buy_price;
  String nbu_cell_price;

  Currency({required this.title,required this.code,required this.cb_price, required this.nbu_buy_price,required this.nbu_cell_price});

  factory Currency.fromJson(Map <String,dynamic> json){
    String title = json['title'] as String;
    String code = json['code'] as String;
    String cb_price = json['cb_price'] as String;
    String nbu_buy_price = json['nbu_buy_price'] as String;
    String nbu_cell_price = json['nbu_cell_price'] as String;

    return Currency(title: title, code: code, cb_price: cb_price, nbu_buy_price: nbu_buy_price, nbu_cell_price: nbu_cell_price);

  }

}