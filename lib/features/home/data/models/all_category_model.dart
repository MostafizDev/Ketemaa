class CategoryModel {
  Categories? categories;

  CategoryModel({this.categories});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    categories = json['categories'] != null
        ? new Categories.fromJson(json['categories'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.categories != null) {
      data['categories'] = this.categories!.toJson();
    }
    return data;
  }
}

class Categories {
  var totalCount;
  List<Edges>? edges;

  Categories({this.totalCount, this.edges});

  Categories.fromJson(Map<String, dynamic> json) {
    totalCount = json['totalCount'];
    if (json['edges'] != null) {
      edges = [];
      json['edges'].forEach((v) {
        edges!.add(new Edges.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalCount'] = this.totalCount;
    if (this.edges != null) {
      data['edges'] = this.edges!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Edges {
  Node? node;

  Edges({this.node});

  Edges.fromJson(Map<String, dynamic> json) {
    node = json['node'] != null ? new Node.fromJson(json['node']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.node != null) {
      data['node'] = this.node!.toJson();
    }
    return data;
  }
}

class Node {
  var name;
  var objectId;

  Node({this.name, this.objectId});

  Node.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    objectId = json['objectId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['objectId'] = this.objectId;
    return data;
  }
}
