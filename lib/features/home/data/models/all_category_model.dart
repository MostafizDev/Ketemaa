class AllCategory {
  Data? data;

  AllCategory({this.data});

  AllCategory.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? allCategoryKeyword;

  Data({this.allCategoryKeyword});

  Data.fromJson(Map<String, dynamic> json) {
    allCategoryKeyword = json['allCategoryKeyword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['allCategoryKeyword'] = this.allCategoryKeyword;
    return data;
  }
}