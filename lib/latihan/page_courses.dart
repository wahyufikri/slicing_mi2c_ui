import 'package:flutter/material.dart';
import 'package:slicing_mi2c_ui/latihan/page_DetailCourses.dart';

class PageCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Machine Learning'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[200],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: GestureDetector(
                  onTap: () {
                    print('Machine Learning');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageDetailCourses(),
                      ),
                    );
                  },
                  child: CategoryCard(
                    title: 'Machine Learning',
                    rating: 4.5,
                    viewers: 10,
                    image: AssetImage('assets/gambar/cyber0.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: GestureDetector(
                  // onTap: () {
                  //   print('Ethical Hacking');
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => PageDetailCourses(),
                  //     ),
                  //   );
                  // },
                  child: CategoryCard(
                    title: 'Ethical Hacking',
                    rating: 4.2,
                    viewers: 10,
                    image: AssetImage('assets/gambar/cyber1.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: GestureDetector(
                  onTap: () {
                    print('Introduction to Cyber Security');
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => DetailPage(title: 'Ethical Hacking'),
                    //   ),
                    // );
                  },
                  child: CategoryCard(
                    title: 'Introduction to Cyber Security',
                    rating: 4.2,
                    viewers: 10,
                    image: AssetImage('assets/gambar/cyber2.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: GestureDetector(
                  onTap: () {
                    print('Introduction to Cyber Crime');
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => DetailPage(title: 'Ethical Hacking'),
                    //   ),
                    // );
                  },
                  child: CategoryCard(
                    title: 'Introduction to Cyber Crime',
                    rating: 4.2,
                    viewers: 10,
                    image: AssetImage('assets/gambar/cyber3.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: GestureDetector(
                  onTap: () {
                    print('Introduction to Cryptography');
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => DetailPage(title: 'Ethical Hacking'),
                    //   ),
                    // );
                  },
                  child: CategoryCard(
                    title: 'Introduction to Cryptography',
                    rating: 4.2,
                    viewers: 10,
                    image: AssetImage('assets/gambar/cyber4.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: GestureDetector(
                  onTap: () {
                    print('CISSP');
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => DetailPage(title: 'Ethical Hacking'),
                    //   ),
                    // );
                  },
                  child: CategoryCard(
                    title: 'CISSP',
                    rating: 4.2,
                    viewers: 10,
                    image: AssetImage('assets/gambar/cyber5.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: GestureDetector(
                  onTap: () {
                    print('Introduction to CISSP');
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => DetailPage(title: 'Ethical Hacking'),
                    //   ),
                    // );
                  },
                  child: CategoryCard(
                    title: 'Introduction to CISSP',
                    rating: 4.2,
                    viewers: 10,
                    image: AssetImage('assets/gambar/cyber6.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: GestureDetector(
                  onTap: () {
                    print('Cyber Crime');
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => DetailPage(title: 'Ethical Hacking'),
                    //   ),
                    // );
                  },
                  child: CategoryCard(
                    title: 'Cyber Crime',
                    rating: 4.2,
                    viewers: 10,
                    image: AssetImage('assets/gambar/cyber7.png'),
                  ),
                ),
              ),
              // Tambahkan lebih banyak CategoryCard di sini sesuai kebutuhan
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final double rating;
  final int viewers;
  final ImageProvider image;

  const CategoryCard({
    required this.title,
    required this.rating,
    required this.viewers,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      surfaceTintColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      SizedBox(width: 5),
                      Text(
                        rating.toString(),
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Text(
                    '$viewers k learners',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image(
                    image: image,
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class DetailPage extends StatelessWidget {
//   final String title;
//
//   const DetailPage({required this.title});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: Text('Detail Page for $title'),
//       ),
//     );
//   }
// }