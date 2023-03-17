import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchList extends StatefulWidget {
  const SearchList({super.key});

  @override
  State<SearchList> createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: RecentRow(),
                  ),
                  RecenListWidget(),
                  RecenListWidget(),
                  RecenListWidget(),
                  RecenListWidget(),
                  RecenListWidget(),
                  RecenListWidget(),
                  RecenListWidget(),
                  RecenListWidget(),
                  RecenListWidget(),
                  RecenListWidget(),
                  RecenListWidget(),
                  RecenListWidget(),
                  RecenListWidget(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Row RecentRow() {
    return Row(
      children: [
        Text(
          "Recent",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Spacer(),
        TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {},
          child: Text("See all"),
        )
      ],
    );
  }

  Row RecenListWidget() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(faker.image.image(random: true)))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "nickName",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 5,
              ),
              Text(faker.person.name())
            ],
          ),
        ),
      ],
    );
  }
}
