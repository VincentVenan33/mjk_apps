import 'package:flutter/material.dart';

class HeaderUser extends StatelessWidget {
  const HeaderUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 60,
        left: 24,
        right: 24,
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: const BoxDecoration(
              shape: BoxShape.circle, // Makes the container circular
            ),
            child: ClipOval(
              child: Image.network(
                'https://images.unsplash.com/photo-1638803040283-7a5ffd48dad5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80', // Replace with your image URL
                fit: BoxFit.cover, // You can choose the BoxFit that suits your needs
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ajeng Wigati',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Sales Lapangan',
                    )
                  ],
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.notification_important_outlined),
            color: Colors.black,
            onPressed: () {
              // Add your notification icon's onPressed functionality here
            },
          ),
        ],
      ),
    );
  }
}

// class HeaderSales {
//   static Container headSales() => Container(
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Row(
//             children: [
//               Container(
//                 width: 48,
//                 height: 48,
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle, // Makes the container circular
//                 ),
//                 child: ClipOval(
//                   child: Image.network(
//                     'https://images.unsplash.com/photo-1638803040283-7a5ffd48dad5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80', // Replace with your image URL
//                     fit: BoxFit
//                         .cover, // You can choose the BoxFit that suits your needs
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   child: Padding(
//                     padding: EdgeInsets.only(left: 10),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Ajeng Wigati',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           'Sales Lapangan',
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.only(
//                     left: 10), // Adjust the margin as needed
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   border: Border.all(
//                     color: MjkColor
//                         .iconButtonSalesColor, // Border color for the icon
//                     width: 2.0, // Border width for the icon
//                   ),
//                 ),
//                 child: IconButton(
//                   icon: const Icon(Icons.notifications_none_outlined),
//                   color: Colors.black,
//                   onPressed: () {
//                     // Add your notification icon's onPressed functionality here
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
// }
