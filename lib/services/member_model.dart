class MemberModel {
  int? id;
  int? userId;
  String? memberName;
  String? memberImage;
  String? createdAt;
  String? updatedAt;

  MemberModel({
    this.id,
    this.userId,
    this.memberName,
    this.memberImage,
    this.createdAt,
    this.updatedAt,
  });

  factory MemberModel.fromJson(Map<String, dynamic> json) {
    return MemberModel(
      id: json['id'],
      userId: json['user_id'],
      memberName: json['member_name'],
      memberImage: json['member_image'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['user_id'] = userId;
    data['member_name'] = memberName;
    data['member_image'] = memberImage;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}