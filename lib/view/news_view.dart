import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view_model/news_viewmodel/news_viewmodel.dart';


class NewsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: SafeArea(child: Scaffold(body: GetBuilder<NewsVM>(
        builder: (controller) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: controller.newsList.length,
                itemBuilder: (context, index) {
                  return InkWell(

                    child: Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.all(20),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Image.network(controller.newsList[index].imageUrl!),
                        Text(
                          controller.newsList[index].title!,
                          style: const TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        Container(

                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              shape: BoxShape.rectangle,
                              color: Colors.teal[300],
                          ),
                          child: Text(
                            controller.newsList[index].content!,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              color: Colors.brown,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(
                          '- ${controller.newsList[index].author!}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Divider(
                            thickness: 2,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ]),
                    ),
                  );
                },
              ))
            ],
          );
        },
      ))),
    );
  }
}
