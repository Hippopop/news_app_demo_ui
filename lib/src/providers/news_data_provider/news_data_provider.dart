import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app_demo/src/providers/news_data_provider/models/news_data_model.dart';
import 'package:news_app_demo/src/providers/news_data_provider/models/pinned_news_model.dart';

var _newsList = <NewsDataModel>[
  NewsDataModel(
    title:
        "Bangladesh protests updates: Sheikh Hasina quits, interim gov't taking over",
    description:
        "Bangladesh's Prime Minister Sheikh Hasina has resigned and fled the country following weeks of deadly demonstrations against her government. The removal of Hasina on Monday followed weeks of deadly protests and appears to have averted the threat of further bloodshed. The focus now moves to who will control the South Asian country.",
    imageLink:
        "https://images.prothomalo.com/prothomalo-bangla%2F2024-10-07%2Fqiz78lwo%2F046A8845.JPG?auto=format%2Ccompress&fmt=webp&format=webp&dpr=1.0&q=70&w=1800",
    writerName: "Mahir",
    sourceName: "Prothom Alo",
    publishedAt: DateTime.now(),
    isDailyTopper: true,
  ),
  NewsDataModel(
    title:
        "Pan Zhanle's new swimming world-record at Olympics makes no sense, and that's the problem",
    description:
        "Pan Zhanle did the unthinkable on Wednesday in the men's 100 meter freestyle. The 19-year-old didn't just break the most difficult world record in swimming, but he smashed it by 0.4 seconds — and beat second place by 1.08 seconds, a full body length. What has ensued from that moment is, in a word, ugly. There have been allegations of doping from one side, claims of racism from the other, and in the middle the inescapable reality that what ensued simply doesn't make sense.",
    imageLink:
        "https://images.prothomalo.com/prothomalo-bangla%2F2024-08%2Fce8410ab-ec9f-445d-a765-53337d484aea%2Fhttps___cloudfront-us-east-2.images.arcpublishing.com_reuters_ZWRIAAFPB5O7RPYIW2AQERJ6JY.jpg?auto=format%2Ccompress&fmt=webp&format=webp&w=1800&dpr=2.0",
    writerName: "Mostafijul Islam",
    sourceName: "Naya Diganto",
    publishedAt: DateTime.now(),
    isDailyTopper: true,
  ),
  NewsDataModel(
    title:
        "What to know about the 25th Amendment as Trump makes wild claim about Biden",
    description:
        "No matter what Biden says or how much his fellow Democrats try to build up his accomplishments as president, multiple Republicans have argued that the 25th Amendment to the Constitution should be used to remove Biden from office ASAP - something that's not going to happen since no Democrat supports it. ",
    imageLink:
        "https://images.prothomalo.com/prothomalo-bangla%2F2024-07%2F4260044d-5cf4-4f84-9ca3-7312570d5c52%2Fnato%20biden.JPG?rect=0%2C0%2C5500%2C3667&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=2.0",
    writerName: "Mahfuz Anam",
    sourceName: "The Daily Star",
    publishedAt: DateTime.now(),
    isDailyTopper: true,
  ),
  NewsDataModel(
    title:
        "Israel-Hamas war updates: Israel says 2,600 ‘terrorist targets’ struck; Gaza’s health services enter ‘critical stage’",
    description:
        "The Gaza Strip’s health services have entered a “critical stage,” Palestinian health authorities say. In its daily update, the Israeli Defense Forces said 2,600 “terrorist targets” inside the Gaza Strip have been struck, including the Islamic University, which Hamas militants are said to be using as a training camp.",
    imageLink:
        "https://images.prothomalo.com/prothomalo-bangla%2F2024-09-05%2Ft85mkf1e%2Fgaza-hamas.jpg?rect=0%2C1%2C640%2C427&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=2.0",
    writerName: "Nipun Akand",
    sourceName: "The Daily Star",
    publishedAt: DateTime.now(),
    isDailyTopper: true,
  ),
  NewsDataModel(
    title:
        "Laboris quis quis magna veniam ex voluptate ullamco amet ut dolore. ",
    description:
        """Adipisicing et occaecat ea magna id occaecat enim occaecat sunt sint non. In Lorem duis Lorem ad et culpa. Labore labore nisi officia quis duis ullamco et fugiat sit minim laborum. Sunt dolore exercitation in excepteur fugiat sit eu. Nisi ut commodo minim magna do velit laborum.

Adipisicing laborum voluptate culpa aute sunt laborum elit reprehenderit. Anim pariatur nulla aliquip deserunt ut aute. Ut nisi sit aliqua magna est aliquip. Ex consequat aliqua sunt adipisicing mollit qui nisi veniam aute irure.""",
    imageLink:
        "https://images.prothomalo.com/prothomalo-bangla%2F2021-08%2F415df599-c7ea-4314-9318-e5b060df6d2c%2F1793006_pepjose_1535806605.jpg?rect=45%2C0%2C578%2C385&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=2.0",
    writerName: "Fabrizio Romano",
    sourceName: "The Daily Star",
    publishedAt: DateTime.now(),
    isDailyTopper: true,
  ),
];

final newsDataProvider = FutureProvider<List<NewsDataModel>>((ref) async {
  await Future.delayed(1500.ms);
  return _newsList;
});

const _pinnedNewsList = <PinnedNewsModel>[
  PinnedNewsModel(
    title: "Paris Olympiad 2024",
    imageLink:
        "https://images.unsplash.com/photo-1664869526116-c6c77f7eef96?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvb3RpbmclMjByYW5nZXxlbnwwfHwwfHx8MA%3D%3D",
  ),
];

final pinnedNewsProvider = FutureProvider<List<PinnedNewsModel>>((ref) async {
  await Future.delayed(1500.ms);
  return _pinnedNewsList;
});
