import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: const Text("Find Products",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search_rounded,
                    color: Colors.black87,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none
                  ),
                  labelText: "Search store",
                  fillColor: Colors.grey[275],
                  filled: true,
                ),
              ),
              const SizedBox(height: 30,),
                GridView(
              physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  children: [
                    MaterialButton(
                      onPressed: (){},
                      color: Colors.green[100],
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color:Colors.lightGreen,
                          )
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          Image.asset(
                            "assets/fruits and veg.png",
                            height:90,
                            width:200,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 15,),
                          const Text(
                            "Fresh Fruits\n& Vegetables",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){},
                      color: Colors.yellow[100],
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color:Colors.yellowAccent,
                          )
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          Image.asset(
                            "assets/cooking oil.png",
                            height:90,
                            width:200,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 15,),
                          const Text(
                            "Cooking Oil\n& Ghee",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){},
                      color: Colors.red[100],
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color:Colors.redAccent,
                          )
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/meat and fish.png",
                            height:100,
                            width:200,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 15,),
                          const Text(
                            "Meat\n& Fish",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){},
                      color: Colors.purple[100],
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color:Colors.purpleAccent,
                          )
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          Image.asset(
                            "assets/bakery and snacks.png",
                            fit: BoxFit.fill,
                            height: 90,
                            width: 200,
                          ),
                          const SizedBox(height: 15,),
                          const Text(
                            "Bakery\n& Snacks",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){},
                      color: Colors.yellow[100],
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color:Colors.yellowAccent,
                          )
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          Image.asset(
                            "assets/diary and eggs.png",
                            fit: BoxFit.fill,
                            height: 90,
                            width: 200,
                          ),
                          const SizedBox(height: 15,),
                          const Text(
                            "Dairy\n& Eggs",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){},
                      color: Colors.indigo[100],
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color:Colors.indigoAccent,
                          )
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          Image.asset(
                            "assets/beverages.png",
                            fit: BoxFit.fill,
                            width: 200,
                            height: 90,
                          ),
                          const SizedBox(height: 15,),
                          const Text(
                            "Beverages",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){},
                      color: Colors.purple[100],
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color:Colors.purpleAccent,
                          )
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          Image.asset(
                            "assets/bakery and snacks.png",
                            fit: BoxFit.fill,
                            height: 90,
                            width: 200,
                          ),
                          const SizedBox(height: 15,),
                          const Text(
                            "Bakery\n& Snacks",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){},
                      color: Colors.red[100],
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color:Colors.redAccent,
                          )
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/meat and fish.png",
                            height:100,
                            width:200,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 15,),
                          const Text(
                            "Meat\n& Fish",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
            ],
          ),
        )

      )
    );
  }
}
