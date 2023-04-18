import 'package:flutter/material.dart';

class VerifationView extends StatefulWidget {
  const VerifationView({super.key});

  @override
  State<VerifationView> createState() => _VerifationViewState();
}

class _VerifationViewState extends State<VerifationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
            padding: const EdgeInsets.only(left: 15),
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Numarani Kod ile Dogrula"),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                "SMS kodunu asagidaki numaraya gonderdik",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "+90 (539) 372 02 53",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Numarayi Degistir",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.cyan,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
