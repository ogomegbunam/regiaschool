import 'package:json_annotation/json_annotation.dart';
import 'package:masterstudy_app/data/models/category.dart';

part 'CourseDetailResponse.g.dart';

@JsonSerializable()
class CourseDetailResponse {
  num? id;
  String? title;
  ImagesBean? images;
  List<String?> categories;
  PriceBean? price;
  RatingBean? rating;
  dynamic featured;
  dynamic status;
  AuthorBean? author;
  String? url;
  String? description;
  List<MetaBean?> meta;
  String? announcement;
  String? purchase_label;
  List<CurriculumBean?>? curriculum;
  List<FaqBean?> faq;
  bool? is_favorite;
  bool? trial;
  num? first_lesson;
  String? first_lesson_type;
  bool? has_access;
  List<Category?> categories_object;

  CourseDetailResponse({
    required this.id,
    required this.title,
    required this.images,
    required this.categories,
    required this.price,
    required this.rating,
    required this.featured,
    required this.status,
    required this.author,
    required this.url,
    required this.description,
    required this.meta,
    required this.announcement,
    required this.purchase_label,
    required this.curriculum,
    required this.faq,
    required this.is_favorite,
    required this.trial,
    required this.first_lesson,
    required this.first_lesson_type,
    required this.has_access,
    required this.categories_object,
  });

  factory CourseDetailResponse.fromJson(Map<String, dynamic> json) => _$CourseDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CourseDetailResponseToJson(this);
}

@JsonSerializable()
class FaqBean {
  String question;
  String answer;

  FaqBean({required this.question, required this.answer});

  factory FaqBean.fromJson(Map<String, dynamic> json) => _$FaqBeanFromJson(json);

  Map<String, dynamic> toJson() => _$FaqBeanToJson(this);
}

@JsonSerializable()
class CurriculumBean {
  String type;
  String view;
  String label;
  String meta;
  dynamic lesson_id;
  dynamic has_preview;

  CurriculumBean({required this.type, required this.view, required this.label, required this.meta, this.lesson_id, this.has_preview});

  factory CurriculumBean.fromJson(Map<String, dynamic> json) => _$CurriculumBeanFromJson(json);

  Map<String, dynamic> toJson() => _$CurriculumBeanToJson(this);
}

@JsonSerializable()
class MetaBean {
  String type;
  String label;
  String text;

  MetaBean({required this.type, required this.label, required this.text});

  factory MetaBean.fromJson(Map<String, dynamic> json) => _$MetaBeanFromJson(json);

  Map<String, dynamic> toJson() => _$MetaBeanToJson(this);
}

@JsonSerializable()
class AuthorBean {
  num? id;
  String? login;
  String? avatar_url;
  String? url;
  AuthorMetaBean? meta;
  AuthorRatingBean? rating;

  AuthorBean({
    required this.id,
    required this.login,
    required this.avatar_url,
    required this.url,
    required this.meta,
    required this.rating,
  });

  factory AuthorBean.fromJson(Map<String, dynamic> json) => _$AuthorBeanFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorBeanToJson(this);
}

@JsonSerializable()
class AuthorMetaBean {
  String facebook;
  String twitter;
  String instagram;
  @JsonKey(name: "google-plus")
  String google_plus;
  String position;
  String description;
  String first_name;
  String last_name;

  AuthorMetaBean({
    required this.facebook,
    required this.twitter,
    required this.instagram,
    required this.google_plus,
    required this.position,
    required this.description,
    required this.first_name,
    required this.last_name,
  });

  factory AuthorMetaBean.fromJson(Map<String, dynamic> json) => _$AuthorMetaBeanFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorMetaBeanToJson(this);
}

@JsonSerializable()
class AuthorRatingBean {
  num total;
  num average;
  num marks_num;
  String total_marks;
  num percent;

  AuthorRatingBean({
    required this.total,
    required this.average,
    required this.marks_num,
    required this.total_marks,
    required this.percent,
  });

  factory AuthorRatingBean.fromJson(Map<String, dynamic> json) => _$AuthorRatingBeanFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorRatingBeanToJson(this);
}

@JsonSerializable()
class RatingBean {
  num? total;
  num? average;
  num? percent;
  DetailsBean? details;

  RatingBean({
    required this.total,
    required this.average,
    required this.percent,
    required this.details,
  });

  factory RatingBean.fromJson(Map<String, dynamic> json) => _$RatingBeanFromJson(json);

  Map<String, dynamic> toJson() => _$RatingBeanToJson(this);
}

@JsonSerializable()
class DetailsBean {
  @JsonKey(name: "1")
  num one;
  @JsonKey(name: "2")
  num two;
  @JsonKey(name: "3")
  num three;
  @JsonKey(name: "4")
  num four;
  @JsonKey(name: "5")
  num five;

  DetailsBean({
    required this.one,
    required this.two,
    required this.three,
    required this.four,
    required this.five,
  });

  factory DetailsBean.fromJson(Map<String, dynamic> json) => _$DetailsBeanFromJson(json);

  Map<String, dynamic> toJson() => _$DetailsBeanToJson(this);
}

@JsonSerializable()
class PriceBean {
  bool free;
  String price;
  dynamic old_price;

  PriceBean({required this.free, required this.price, this.old_price});

  factory PriceBean.fromJson(Map<String, dynamic> json) => _$PriceBeanFromJson(json);

  Map<String, dynamic> toJson() => _$PriceBeanToJson(this);
}

@JsonSerializable()
class ImagesBean {
  String full;
  String small;

  ImagesBean({required this.full, required this.small});

  factory ImagesBean.fromJson(Map<String, dynamic> json) => _$ImagesBeanFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesBeanToJson(this);
}