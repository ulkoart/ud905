import 'package:flutter/material.dart';

class NewsfeedItem extends StatelessWidget {
  final String title;

  const NewsfeedItem({
    Key key,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final _itemColor = Colors.blue[100];

    return Container(
      decoration: BoxDecoration(
        color: _itemColor,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 150,
      margin: EdgeInsets.all(10.0),
      child: Center(
        child: Container(
          child: Text(title,),
        ),
      ),
    );
  }
}

class Newsfeed extends StatelessWidget {
  final _posts = <Map>[
    {
      "title":
          "Общее число случаев COVID-19 в России превысило два миллиона - РИА НОВОСТИ"
    },
    {
      "title":
          "Черчесов прокомментировал отсутствие Дзюбы в решающих матчах Лиги наций - Lenta.ru"
    },
    {
      "title":
      "Общее число случаев COVID-19 в России превысило два миллиона - РИА НОВОСТИ"
    },
    {
      "title":
      "Черчесов прокомментировал отсутствие Дзюбы в решающих матчах Лиги наций - Lenta.ru"
    },
  ];

  Widget _buildNewsfeedItemsWidgets(List<Widget> items) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => items[index],
      itemCount: items.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    final items = <NewsfeedItem>[];

    for (var i = 0; i < _posts.length; i++) {
      items.add(NewsfeedItem(title: _posts[i]["title"]));
    }

    final listView = _buildNewsfeedItemsWidgets(items);

    return listView;
  }
}
