import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_product_design/model/data.dart';

class productView extends StatefulWidget {
  const productView({super.key});

  @override
  State<productView> createState() => _productViewState();
}

class _productViewState extends State<productView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 25),
          width: (MediaQuery.of(context).size.width)-50,
          height: (MediaQuery.of(context).size.width)-50,
          constraints: const BoxConstraints(maxWidth: 300, maxHeight: 300),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network('https://cdn.homedepot.com.mx/productos/608416/608416-d.jpg')),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          margin: const EdgeInsets.all(25),
          width: (MediaQuery.of(context).size.width)-50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 195, 214, 0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  products[0]["name"].toString(),
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    )
                  )
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  products[0]["code"].toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20
                  ),
                  ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Theme.of(context).dividerColor)),
                ),
                child: Text(
                  products[0]["trademark"].toString(),
                  style: GoogleFonts.breeSerif(
                    textStyle: const TextStyle(
                      fontSize: 18
                    )
                  ),
                  ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Theme.of(context).dividerColor)),
                ),
                child: Text(
                  '\$' + products[0]["cost"].toString(),
                  style: GoogleFonts.breeSerif(
                    textStyle: const TextStyle(
                      fontSize: 18
                    )
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}