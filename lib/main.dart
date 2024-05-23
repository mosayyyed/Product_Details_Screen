import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<StatefulWidget> {
  String _selectedImage = 'assets/images/01.png';
  bool isFavorite = false;

  bool colorOneIsSelected = false;
  bool colorTwoIsSelected = true;
  bool colorThreeIsSelected = false;

  void _changeSelectedImage(String imagePath) {
    setState(() {
      _selectedImage = imagePath;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Final project',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 245, 233, 235)),
          useMaterial3: true,
        ),
        home: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(40, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.zero,
                        elevation: 0,
                        backgroundColor: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(40, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.zero,
                        elevation: 0,
                        backgroundColor: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          isFavorite
                              ? Icons.favorite_rounded
                              : Icons.favorite_border_rounded,
                          color: isFavorite
                              ? const Color.fromARGB(255, 229, 70, 96)
                              : Colors.black,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Container(
                      margin: const EdgeInsets.only(
                          top: 130, bottom: 40, left: 20, right: 20),
                      child: Column(
                        children: [
                          _buildSmallImage('assets/images/01.png'),
                          const SizedBox(height: 15),
                          _buildSmallImage('assets/images/02.png'),
                          const SizedBox(height: 15),
                          _buildSmallImage('assets/images/03.png'),
                          const SizedBox(height: 15),
                          _buildSmallImage('assets/images/04.png'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 415,
                        width: 320,
                        padding: const EdgeInsets.only(
                            top: 100, right: 50, left: 50, bottom: 50),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 245, 233, 235),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(18)),
                        ),
                        child: Image.asset(
                          _selectedImage,
                        ),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20, left: 20, top: 20, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "IPhone 15 Pro Max",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 24),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Color.fromARGB(255, 237, 206, 82),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  "4.6",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 25, bottom: 25),
                          child: Text(
                            // ("The iPhone 15 Pro Max is crafted from Lightweight titanium design, durable ceramic shield front, water and dust resistance."),
                            "The iPhone 15 Pro Max is crafted from lightweight and durable space-grade titanium, featuring a textured matte glass back. It boasts a ceramic shield front capable of withstanding more than typical smartphone glass. Additionally, it is water and dust resistant.",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color.fromARGB(
                                        255, 245, 233, 235),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.info_outline_rounded,
                                      color: Color.fromARGB(255, 229, 70, 96),
                                      size: 25,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  "Product Specifications",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 25,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color.fromARGB(
                                        255, 245, 233, 235),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.color_lens_outlined,
                                      color: Color.fromARGB(255, 229, 70, 96),
                                      size: 25,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  "Colors",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                _buildColorButton(
                                    const Color.fromARGB(255, 16, 68, 107), 0),
                                const SizedBox(
                                  width: 8,
                                ),
                                _buildColorButton(
                                    const Color.fromARGB(255, 84, 84, 78), 1),
                                const SizedBox(
                                  width: 8,
                                ),
                                _buildColorButton(
                                    const Color.fromARGB(255, 19, 19, 19), 2),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '\$1,041',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: '.77',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 229, 70, 96),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: MaterialButton(
                            onPressed: () {},
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Add To Cart",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }

  Widget _buildSmallImage(String imagePath) {
    bool isSelected = _selectedImage == imagePath;

    return GestureDetector(
      onTap: () {
        _changeSelectedImage(imagePath);
      },
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 244, 245, 248),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: isSelected
                  ? const Color.fromARGB(255, 229, 70, 96)
                  : const Color.fromARGB(255, 244, 245, 248),
              width: 2),
        ),
        padding: const EdgeInsets.all(5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Image.asset(
            imagePath,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }

  Widget _buildColorButton(Color color, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          colorOneIsSelected = index == 0;
          colorTwoIsSelected = index == 1;
          colorThreeIsSelected = index == 2;
        });
      },
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: index == 0 && colorOneIsSelected ||
                index == 1 && colorTwoIsSelected ||
                index == 2 && colorThreeIsSelected
                ? const Color.fromARGB(255, 229, 70, 96)
                : Colors.grey,
            width: 2,
          ),
          color: color,
        ),
      ),
    );
  }
}
