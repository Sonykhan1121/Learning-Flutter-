import 'package:flutter/material.dart';

class Tiktokui extends StatelessWidget {
  const Tiktokui({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 35,
              left: 10,
              right: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.close,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.music_note_outlined,
                      ),
                      Text('music'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.filter,
                      ),
                      Text(
                        'Flip',
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              right: 20,
              top: 90,
              child: Column(
                children: [
                  Icon(Icons.speed),
                  Text('Speed'),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(Icons.computer),
                  Text('Beauty'),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(Icons.filter),
                  Text('Filter'),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(Icons.punch_clock),
                  Text('Time'),
                ],
              ),
            ),
            Positioned(
              left: 30,
              right: 30,
              bottom: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Icon(
                          Icons.image,
                          color: Colors.white,
                        ),
                      ),
                      Text('Effects'),
                    ],
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.6),
                      borderRadius: BorderRadius.all(Radius.circular(50)),

                    ),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border.all(color: Colors.black,width: 2,)
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Icon(
                          Icons.upload,
                          color: Colors.white,
                        ),
                      ),
                      Text('Upload'),
                    ],
                  ),

                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
