import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Userscreen extends StatefulWidget {
  const Userscreen({Key? key}) : super(key: key);

  @override
  State<Userscreen> createState() => _UserscreenState();
}

class _UserscreenState extends State<Userscreen> {
  List<Products> prod = [];
  TextEditingController txtpname = TextEditingController();
  TextEditingController txtpqty = TextEditingController();
  TextEditingController txtpprice = TextEditingController();
  TextEditingController txtpdisc = TextEditingController();

  int billAmount = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff3f3f3f),
        appBar: AppBar(
          elevation: 00,
          leading: Icon(Icons.home),
          title: Text('User Screen'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "bill");
                },
                icon: Icon(Icons.next_plan_outlined)),
          ],
          backgroundColor: Color(0xff3f3f3f),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Username :",
                    style: TextStyle(color: Color(0xffffffff), fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 350,
                    child: TextField(
                      style: TextStyle(color: Color(0xffffffff)),
                      decoration: InputDecoration(
                        enabledBorder: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                        focusedBorder: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                        focusColor: Color(0xffffffff),
                        hintText: 'Enter Username',
                        hintStyle: TextStyle(
                          color: Color(0xff989898),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Address :",
                    style: TextStyle(color: Color(0xffffffff), fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 350,
                    child: TextField(
                      style: TextStyle(color: Color(0xffffffff)),
                      decoration: InputDecoration(
                        enabledBorder: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                        focusedBorder: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                        focusColor: Color(0xffffffff),
                        hintText: 'Enter Address',
                        hintStyle: TextStyle(
                          color: Color(0xff989898),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Contact No :",
                    style: TextStyle(color: Color(0xffffffff), fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 350,
                    child: TextField(
                      style: TextStyle(color: Color(0xffffffff)),
                      decoration: InputDecoration(
                        enabledBorder: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                        focusedBorder: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                        focusColor: Color(0xffffffff),
                        hintText: 'Enter Contact No.',
                        hintStyle: TextStyle(
                          color: Color(0xff989898),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Product details",
                      style: TextStyle(color: Color(0xffffffff), fontSize: 22),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 15,
                          width: 200,
                          child: ListTile(
                          )
                          ),
                        ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: txtpname,
                            style: TextStyle(color: Color(0xffffffff)),
                            decoration: InputDecoration(
                              enabledBorder: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(12.0),
                                borderSide: BorderSide(color: Colors.white54),
                              ),
                              focusedBorder: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(12.0),
                                borderSide: BorderSide(color: Colors.white54),
                              ),
                              focusColor: Color(0xffffffff),
                              hintText: 'Product name',
                              hintStyle: TextStyle(
                                color: Color(0xff989898),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            controller: txtpqty,
                            keyboardType: TextInputType.numberWithOptions(),
                            style: TextStyle(color: Color(0xffffffff)),
                            decoration: InputDecoration(
                              enabledBorder: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(12.0),
                                borderSide: BorderSide(color: Colors.white54),
                              ),
                              focusedBorder: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(12.0),
                                borderSide: BorderSide(color: Colors.white54),
                              ),
                              focusColor: Color(0xffffffff),
                              hintText: 'Qty',
                              hintStyle: TextStyle(
                                color: Color(0xff989898),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            controller: txtpprice,
                            keyboardType: TextInputType.numberWithOptions(),
                            style: TextStyle(color: Color(0xffffffff)),
                            decoration: InputDecoration(
                              enabledBorder: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(12.0),
                                borderSide: BorderSide(color: Colors.white54),
                              ),
                              focusedBorder: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(12.0),
                                borderSide: BorderSide(color: Colors.white54),
                              ),
                              focusColor: Color(0xffffffff),
                              hintText: 'Price',
                              hintStyle: TextStyle(
                                color: Color(0xff989898),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            controller: txtpdisc,
                            keyboardType: TextInputType.numberWithOptions(),
                            style: TextStyle(color: Color(0xffffffff)),
                            decoration: InputDecoration(
                              enabledBorder: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(12.0),
                                borderSide: BorderSide(color: Colors.white54),
                              ),
                              focusedBorder: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(12.0),
                                borderSide: BorderSide(color: Colors.white54),
                              ),
                              focusColor: Color(0xffffffff),
                              hintText: 'Discount',
                              hintStyle: TextStyle(
                                color: Color(0xff989898),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Products pdct = Products(
                        Pdetail: txtpname.text,
                        qty: txtpqty.text,
                        price: txtpprice.text,
                        discount: txtpdisc.text);

                    setState(() {
                      prod.add(pdct);
                      txtpname = TextEditingController(text: '');
                      txtpqty = TextEditingController(text: '');
                      txtpprice = TextEditingController(text: '');
                      txtpdisc = TextEditingController(text: '');
                    });
                    total();
                  },
                  child: Container(
                    width: 70,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.add_box_rounded, color: Color(0xff000000)),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Add",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(primary: Color(0xfffd00d3)),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: prod.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              prod.removeAt(index);
                            });
                          },
                          child: ListTile(
                            title: Text(
                              "${prod[index].Pdetail}",
                              style: TextStyle(
                                  color: Color(0xffffffff), fontSize: 18),
                            ),
                            leading: Text(
                              "${prod[index].qty}",
                              style: TextStyle(
                                  color: Color(0xff989898), fontSize: 13),
                            ),
                            subtitle: Text(
                              '${prod[index].discount}',
                              style: TextStyle(
                                  color: Color(0xff707070), fontSize: 15),
                            ),
                            trailing: Text(
                              '${prod[index].price}',
                              style: TextStyle(
                                  color: Color(0xffffffff), fontSize: 15),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void total() {
    int totalAmount = 0;
    int totalDisc = 0;

    for (int i = 0; i < prod.length; i++) {
      totalAmount =
          (int.parse(prod[i].price!)) * (int.parse(prod[i].qty!)) + totalAmount;
      totalDisc = int.parse(prod[i].discount!) + totalDisc;
    }
    setState(() {
      billAmount = totalAmount - totalDisc;
    });
  }
}

class Products {
  String? Pdetail, qty, price, discount;

  Products({this.Pdetail, this.qty, this.price, this.discount});
}
