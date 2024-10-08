import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app_demo/src/providers/category_data_provider/models/category_news.dart';
import 'package:news_app_demo/src/providers/category_data_provider/models/single_category.dart';

const _categoryDataList = <SingleCategoryModel>[
  SingleCategoryModel(
    title: "All",
    imageLink:
        "https://images.unsplash.com/photo-1651898896620-b9c8b360cb34?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fHRyZW5kaW5nfGVufDB8MXwwfHx8Mg%3D%3D",
    newsList: [],
  ),
  SingleCategoryModel(
    title: "Trending",
    imageLink:
        "https://images.unsplash.com/photo-1698594691245-404a02bb00a3?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aW50ZXJuYXRpb25hbHxlbnwwfDF8MHx8fDI%3D",
    newsList: [],
  ),
  SingleCategoryModel(
    title: "Reels",
    imageLink:
        "https://images.unsplash.com/photo-1542204637-e67bc7d41e48?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fHJlZWxzfGVufDB8MXwwfHx8Mg%3D%3D",
    newsList: [],
  ),
  SingleCategoryModel(
    title: "Business",
    imageLink:
        "https://images.unsplash.com/photo-1521737711867-e3b97375f902?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fGJ1c2luZXNzfGVufDB8MXwwfHx8Mg%3D%3D",
    newsList: [],
  ),
  SingleCategoryModel(
    title: "Insight",
    imageLink:
        "https://images.unsplash.com/flagged/photo-1557804519-2a4254cae938?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8SW5zaWdodHxlbnwwfDF8MHx8fDI%3D",
    newsList: [],
  ),
  SingleCategoryModel(
    title: "Albums",
    imageLink:
        "https://images.unsplash.com/photo-1564178399797-73b5f0b44f7a?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YWxidW1zfGVufDB8MXwwfHx8Mg%3D%3D",
    newsList: [],
  ),
  SingleCategoryModel(
    title: "Fashion",
    imageLink:
        "https://images.unsplash.com/photo-1509631179647-0177331693ae?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFzaGlvbnxlbnwwfDF8MHx8fDI%3D",
    newsList: [],
  ),
  SingleCategoryModel(
    title: "Sports",
    imageLink:
        "https://images.unsplash.com/photo-1586348274214-06dfb3c8bbb4?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHNwb3J0c3xlbnwwfDF8MHx8fDI%3D",
    newsList: [],
  ),
  SingleCategoryModel(
    title: "Politics",
    imageLink:
        "https://images.unsplash.com/photo-1511044676171-fa1c680222c4?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cG9saXRpY3N8ZW58MHwxfDB8fHwy",
    newsList: [],
  ),
];

const _categoryNewsList = [
  CategoryNewsModel(
    title: "শেখ হাসিনার বিরুদ্ধে আরও এক মামলা, হত্যার দুই অভিযোগ",
    imageLink:
        "https://images.prothomalo.com/prothomalo-bangla%2F2024-09-04%2Fg10d8rvk%2F1.webp?rect=0%2C0%2C534%2C356&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=2.0",
  ),
  CategoryNewsModel(
    title: "র‍্যাবের দাবি আন্দোলনে অস্ত্রধারী যুবলীগ কর্মী, পুলিশ বলছে জড়িত নন",
    imageLink:
        "https://images.prothomalo.com/prothomalo-bangla%2F2024-10-07%2Fuydgkfmq%2FWhatsApp-Image-2024-10-07-at-10.33.49-PM.jpeg?rect=103%2C0%2C864%2C576&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=2.0",
  ),
  CategoryNewsModel(
    title: "উচ্চপদস্থ কর্মকর্তাদের ধারণা তিনিই আসামি",
    imageLink:
        "https://images.prothomalo.com/prothomalo-bangla%2F2024-10-07%2Fenus0dhq%2Fjathrabari-Thana.webp?rect=0%2C0%2C600%2C400&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=2.0",
  ),
  CategoryNewsModel(
    title: "র‌্যাবের কোনো সদস্য পালাননি, কর্মবিরতিতেও যাননি",
    imageLink:
        "https://images.prothomalo.com/prothomalo-bangla%2F2024-10-06%2F91ekc20w%2FRab.jpg?rect=0%2C0%2C1400%2C933&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=2.0",
  ),
  CategoryNewsModel(
    title: "কোটা সংস্কারের দাবিতে বঙ্গভবনে স্মারকলিপি দিলেন শিক্ষার্থীরা",
    imageLink:
        "https://images.prothomalo.com/prothomalo-bangla%2F2024-07%2Fda6c4012-e6a1-453f-a0a2-02f5f4914ac1%2FStudent-Movement.jpg?rect=0%2C0%2C640%2C427&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=2.0",
  ),
  CategoryNewsModel(
    title:
        "আন্দোলনে অংশ নেওয়া শ্রমিকদের কোনো স্বীকৃতি দেওয়া হয়নি: আনু মুহাম্মদ",
    imageLink:
        "https://images.prothomalo.com/prothomalo-bangla%2F2024-01%2F746a66cf-9a62-4748-bf81-50afb81f9893%2F01837d34-d704-42bc-b620-a9a7d5f9df3a.JPG?rect=0%2C0%2C6720%2C4480&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=2.0",
  ),
  CategoryNewsModel(
    title:
        "বাংলাদেশে ইসলামি উগ্রবাদ হলে ভারতের উগ্রবাদীদের জন্য সহায়ক হয়: নাহিদ ইসলাম",
    imageLink:
        "https://images.prothomalo.com/prothomalo-bangla%2F2024-10-06%2Fva612ebp%2FNahid.jpg?rect=0%2C0%2C1200%2C800&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=2.0",
  ),
  CategoryNewsModel(
    title: "কোটা সংস্কারের দাবিতে বঙ্গভবনে স্মারকলিপি দিলেন শিক্ষার্থীরা",
    imageLink:
        "https://images.prothomalo.com/prothomalo-bangla%2F2024-07%2Fda6c4012-e6a1-453f-a0a2-02f5f4914ac1%2FStudent-Movement.jpg?rect=0%2C0%2C640%2C427&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=2.0",
  ),
];

final categoryDataProvider = FutureProvider<List<SingleCategoryModel>>(
  (ref) async {
    await Future.delayed(1500.ms);
    return _categoryDataList
        .map(
          (e) => e.copyWith(
            newsList: List.from(_categoryNewsList)..shuffle(),
          ),
        )
        .toList();
  },
);
