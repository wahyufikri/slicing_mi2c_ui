import 'package:flutter/material.dart';

void main() {
  runApp(PageMyCourses());
}

class PageMyCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Courses'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            CourseCard(
              title: 'Machine Learning',
              description:
              'The Machine learning basics program is designed to offer a solid foundation & work-ready skills for ML engineers...',
              progress: 0.4,
              hoursLeft: 4,
            ),
            SizedBox(height: 7),
            CourseCard(
              title: 'Data Science',
              description:
              'Most people know the power Excel can wield, especially when used properly. But fewer people know how to make...',
              progress: 0.6,
              hoursLeft: 2,
            ),
          ],
        ),
      ),
    );
  }
}


class CourseCard extends StatefulWidget {
  final String title;
  final String description;
  final double progress;
  final int hoursLeft;

  CourseCard({
    required this.title,
    required this.description,
    required this.progress,
    required this.hoursLeft,
  });

  @override
  _CourseCardState createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Card(
        color: Colors.white, // Menentukan warna latar belakang kartu
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(widget.description),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        CircularProgressIndicator(
                          value: widget.progress,
                          strokeWidth: 6,
                          backgroundColor: Colors.grey[300],
                          color: Colors.green,
                        ),
                        Center(
                          child: Text(
                            '${(widget.progress * 100).toStringAsFixed(0)}%',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Icon(Icons.access_time, size: 16),
                  SizedBox(width: 4),
                  Text('${widget.hoursLeft} hours left'),
                ],
              ),
              Divider(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                child: Center(child: Text('Start Learning')),
                style: ElevatedButton.styleFrom(
                  foregroundColor: _isHovered ? Colors.white : Color(0xFF0113B9),
                  backgroundColor: _isHovered ? Color(0xFF0113B9) : Colors.transparent,
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  minimumSize: Size(double.infinity, 36),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  elevation: 0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}