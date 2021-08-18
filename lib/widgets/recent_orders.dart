import 'package:flutter/material.dart';
import 'package:food_delivery/data/data.dart';
import 'package:food_delivery/models/order.dart';

class RecentOrders extends StatelessWidget {
  _buildRecentOrder(BuildContext context, Order order) {
    return Container(
      // CREATING ROUNDED BOX
      margin: const EdgeInsets.all(10.0),
      width: 320.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          width: 1.0,
          color: Colors.grey,
        ),
      ),
      // CREATING ROUNDED BOX
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                // ADD IMAGES TO SCROLLING BOX
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    height: 100.0,
                    width: 100.0,
                    image: AssetImage(order.food.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                // ADD IMAGES TO SCROLLING BOX
                // -  -  -
                // ADD 3 TEXT TO SCROLLING BOX
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.food.name + 'abc acb aca bs abs',
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          order.restaurant.name,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          order.date,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                // ADD 3 TEXT TO SCROLLING BOX
              ],
            ),
          ),
          // ADDING BUTTON ADD TO SCROLLING BOX
          Container(
            margin: const EdgeInsets.only(right: 20.0),
            width: 48.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.orangeAccent,
            ),
            child: IconButton(
              onPressed: () {},
              iconSize: 30.0,
              color: Colors.white,
              icon: const Icon(Icons.add),
            ),
          ),
          // ADDING BUTTON ADD TO SCROLLING BOX
        ],
      ),
    );
  }

  const RecentOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ADDING SOME HEADING FOR INTRODUCTION TO SCROLLING BOX
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Recent Orders',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
          ),
        ),
        // ADDING SOME HEADING FOR INTRODUCTION TO SCROLLING BOX
        // -  -  -
        // CREATING THE CONTAINER FOR SCROLLING BOX
        SizedBox(
          height: 120.0,
          // color: Colors.blue,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(left: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: currentUser.orders.length,
            itemBuilder: (BuildContext context, int index) {
              Order order = currentUser.orders[index];
              return _buildRecentOrder(context, order);
            },
          ),
        ),
        // CREATING THE CONTAINER FOR SCROLLING BOX
      ],
    );
  }
}
