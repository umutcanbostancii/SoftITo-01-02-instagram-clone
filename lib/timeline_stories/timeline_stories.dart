import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TimeLineStories extends StatefulWidget {
  const TimeLineStories({super.key});

  @override
  State<TimeLineStories> createState() => _TimeLineStoriesState();
}

class _TimeLineStoriesState extends State<TimeLineStories> {
  Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: Colors.black,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _storyItem(faker.person.firstName(), faker.image.image()),
          _storyItem(faker.person.firstName(), faker.image.image()),
          _storyItem(faker.person.firstName(), faker.image.image()),
          _storyItem(faker.person.firstName(), faker.image.image()),
          _storyItem(faker.person.firstName(), faker.image.image()),
          _storyItem(faker.person.firstName(), faker.image.image()),
          _storyItem(faker.person.firstName(), faker.image.image()),
          _storyItem(faker.person.firstName(), faker.image.image()),
        ],
      ),
    );
  }
}

Widget _storyItem(String name, String image) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Colors.purple,
              Colors.pink,
              Colors.orange,
            ],
          ),
        ),
        child: Container(
          margin: EdgeInsets.all(3),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      SizedBox(
        width: 60,
        child: Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 12),
          textAlign: TextAlign.center,
        ),
      )
    ],
  );
}
