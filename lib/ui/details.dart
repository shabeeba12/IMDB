import 'package:flutter/material.dart';

import 'home.dart';

class Details extends StatefulWidget {
  final String img;

  const Details({Key? key, required this.img}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 370,
                child: Image.network(
                  widget.img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              data.title.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Director :  ',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  data.rank.toString(),
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Rating :  ',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Text(
                        data.rating.toString(),
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Year :  ',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Text(
                        data.year.toString(),
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Description",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              child: Text(
                data.description.toString(),
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
