import 'package:flutter/material.dart';


class PageDetailCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Navigate back to the previous screen
          },
        ),
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/gambar/imgDetail.png',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Machine Learning',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      SizedBox(width: 4),
                      Text('4.6'),
                      SizedBox(width: 8),
                      Text('10.5k Learners'),
                    ],
                  ),
                  SizedBox(height: 16),
                  TabSection(),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OverviewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(height: 8),
              Icon(Icons.access_time, size: 20),
              SizedBox(width: 8),
              Text('6 Hours'),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.verified, size: 20),
              SizedBox(width: 8),
              Text('Completion Certificate'),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.person, size: 20),
              SizedBox(width: 8),
              Text('Beginner'),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'What will I learn?',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'The Machine learning basics program is designed to offer a solid foundation & work-ready skills for ML engineers. The Machine learning basics program is designed to offer a solid foundation & work-ready skills for ML engineers.',
          ),
          SizedBox(height: 8),
          Text(
            'Read More',
            style: TextStyle(color: Colors.blue),
          ),
          SizedBox(height: 16),
          Text(
            'Ratings and Reviews',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text(
                '3.4',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 8),
              Icon(Icons.star, color: Colors.yellow, size: 20),
              Icon(Icons.star, color: Colors.yellow, size: 20),
              Icon(Icons.star, color: Colors.yellow, size: 20),
              Icon(Icons.star_half, color: Colors.yellow, size: 20),
              Icon(Icons.star_border, color: Colors.yellow, size: 20),
              SizedBox(width: 8),
              Text('3 reviews'),
            ],
          ),
          SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            child: Center(child: Text('Start Learning')),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              minimumSize: Size(double.infinity, 36),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class TabSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(text: 'Overview'),
              Tab(text: 'Lectures'),
              Tab(text: 'Similar Courses'),
            ],
          ),
          Container(
            height: 300, // Adjust height as needed
            child: TabBarView(
              children: [
                OverviewContent(),
                Center(child: Text('Lectures content')),
                Center(child: Text('Similar Courses content')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}