import 'package:cake_project/model/items_model2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class ItemsDetail2 extends StatefulWidget {
  const ItemsDetail2({super.key,required this.cake});
final CakeDetail2 cake;
  @override
  State<ItemsDetail2> createState() => _ItemsDetail2State();
}
int quantity = 1;
class _ItemsDetail2State extends State<ItemsDetail2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      body: ListView(

        children:[
          const SizedBox(
            height: 20,
          ),
          //detail header
          detailItemsHeader(),
          //for image
           detailImage(),
           Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 15), 
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      //For name
                      Text(
                        widget.cake.name,
                    maxLines: 1,
                    
                    style:const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 35) ,
                      
                      ),
                      //For price
                      Text('\$${widget.cake.price}00',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                        ),

                    ],)),
                    Material(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(30),
                      child: (Row(
                        children: [
                          IconButton(
                            onPressed: (){
                              if(quantity > 1){
                                quantity -= 1;
                                setState(() {
                                  
                                });
                              }
                            }, 
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                              ),
                              ),
                              const SizedBox(width: 4,),
                              Text(
                                "$quantity",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18),
                                ),
                                const SizedBox(width: 4,
                                ),
                                IconButton(
                            onPressed: (){
                              
                                quantity += 1;
                                setState(() {
                                  
                                });
                              },
                            
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                              ),
                              ),
                        ],
                      )),
                    )
                  ],
                ),
                 const SizedBox(height: 27,),
                 Row(children: [
                  //For rating
                   Icon(Icons.star,
                      color: Colors.amber,
                      size: 20,
                      ),
                       const SizedBox(
                        width: 4,
                      ),
                      Text(
                     widget.cake.rate.toString(),
                    style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                     //fontWeight: FontWeight.bold,
                    ),
                      
                      ),
                       
                       SizedBox(
                        width: 4,
                      ),
                      
                       Spacer(),
                      //For time
                      const Icon(
                        Icons.access_time_filled,
                        color: Colors.amber,
                        size: 20,
                        ),
                      const SizedBox(
                        width: 4,
                        ),
                        Text(
                        widget.cake.cookingTime,
                    maxLines: 1,
                    
                    style:const TextStyle(
                      //fontWeight: FontWeight.bold,
                      
                      fontSize: 20) ,
                      
                      ),
                ],),
                
                //For description
                const SizedBox(
                      height: 4,
                      ),
                      Text(
                      widget.cake.description,
                      
                      style:const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      
                      ) ,
                      
                      ),
                      //For add to cart button
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                  children: [
                    Expanded(
                      child: Material(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(15),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(15),
                          onTap: () {
                            // Hành động cho nút "Add to cart"
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: const Text(
                              "Thêm vào giỏ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Material(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(15),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(15),
                          onTap: () {
                            // Hành động cho nút "Buy now"
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: const Text(
                              "Mua ngay",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  SizedBox detailImage() {
    return SizedBox(
          height: 300,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: Container(
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),

                    )
                  ),
                  ),
                  
              ),
              Center(
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: const [
                           BoxShadow(
                            color: Colors.pink,
                            blurRadius: 15,
                            offset: Offset(0, 8)
                            
                            ),
           
                        ],
                        borderRadius: BorderRadius.circular(40),
                        ),
                        child: ClipRRect(
                           borderRadius: BorderRadius.circular(40),
                           child: Image.network(
                            widget.cake.image,
                            height: 250,
                            width: 250,
                            fit:BoxFit.cover ,),
                        ),
                        ) ,)
            ],
          ),
        );
  }

  Padding detailItemsHeader() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              //For back button
              Material(
            color: Colors.white.withOpacity(0.21),
            borderRadius: BorderRadius.circular(10),
            child: const BackButton(
              color: Colors.white,
            ),
          ),
          const Spacer(),
          const Text(
                 "Cakes",
                 style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),
                 ),
               
               const Spacer(),
               Material(
                color: Colors.white.withOpacity(0.21),
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10) ,
                  child: Container(
                    height: 40 ,
                    width: 40,
                    alignment: Alignment.center,
                    // ignore: prefer_const_constructors
                    child: Icon(
                      Icons.card_travel_rounded,
                      color: Colors.white,

                    ),
                    ),
                  ),
               )
            ],
          ),
    );
  }
}