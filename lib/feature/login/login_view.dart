import 'package:binbin/feature/login/verification_view.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController controller = TextEditingController();
  String initalCountry = 'TR';
  PhoneNumber number = PhoneNumber(isoCode: "TR");
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  spaceBox(50),
                  const Text(
                    "Telefon Numaranı Gir",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Telefonuna Doğrulama Kodu Göndereceğiz",
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.grey)),
                    child: Stack(
                      children: [
                        InternationalPhoneNumberInput(
                          formatInput: true,
                          textFieldController: controller,
                          initialValue: number,
                          autoValidateMode: AutovalidateMode.disabled,
                          ignoreBlank: false,
                          keyboardType: const TextInputType.numberWithOptions(signed: false, decimal: true),
                          selectorConfig: const SelectorConfig(selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
                          inputDecoration: const InputDecoration(border: InputBorder.none, hintText: "(###) ### ## ##"),
                          onInputChanged: (value) {},
                          onSaved: (PhoneNumber number) {
                            print('On Saved: $number');
                          },
                        )
                      ],
                    ),
                  ),
                  spaceBox(350),
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                        activeColor: Colors.white,
                        checkColor: Colors.cyan,
                        value: value1,
                        onChanged: ((value1) => setState(() => this.value1 = value1!)),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Ticari Elektronik Ileti Izni",
                          style: TextStyle(decoration: TextDecoration.underline, color: Colors.cyan, fontSize: 12),
                        ),
                      ),
                      const Text(
                        "'ni okudum ve kabul ediyorum",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                        activeColor: Colors.white,
                        checkColor: Colors.cyan,
                        value: value2,
                        onChanged: ((value2) => setState(() => this.value2 = value2!)),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Aydinlatma Metni'ni ve Kullanici Sozlesmesi",
                          style: TextStyle(decoration: TextDecoration.underline, color: Colors.cyan, fontSize: 12),
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          "'ni okudum ve kabul ediyorum",
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                        activeColor: Colors.white,
                        checkColor: Colors.cyan,
                        value: value3,
                        onChanged: ((value3) => setState(() => this.value3 = value3!)),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Acik Riza Metni",
                          style: TextStyle(decoration: TextDecoration.underline, color: Colors.cyan, fontSize: 12),
                        ),
                      ),
                      const Text(
                        "'ni okudum ve kabul ediyorum",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(370, 50),
                          backgroundColor: Colors.cyan,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => const VerifationView())));
                      },
                      child: const Text("Devam Et"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

SizedBox spaceBox(double height) => SizedBox(
      height: height,
    );
