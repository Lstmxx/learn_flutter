// To parse this JSON data, do
//
//     final repo = repoFromJson(jsonString);

import 'dart:convert';

class Repo {
  int? id;
  String? name;
  String? fullName;
  String? owner;
  String? parent;
  bool? private;
  String? description;
  bool? fork;
  String? language;
  int? forksCount;
  int? stargazersCount;
  int? size;
  String? defaultBranch;
  int? openIssuesCount;
  DateTime? pushedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? subscribersCount;
  License? license;

  Repo({
    this.id,
    this.name,
    this.fullName,
    this.owner,
    this.parent,
    this.private,
    this.description,
    this.fork,
    this.language,
    this.forksCount,
    this.stargazersCount,
    this.size,
    this.defaultBranch,
    this.openIssuesCount,
    this.pushedAt,
    this.createdAt,
    this.updatedAt,
    this.subscribersCount,
    this.license,
  });

  Repo copyWith({
    int? id,
    String? name,
    String? fullName,
    String? owner,
    String? parent,
    bool? private,
    String? description,
    bool? fork,
    String? language,
    int? forksCount,
    int? stargazersCount,
    int? size,
    String? defaultBranch,
    int? openIssuesCount,
    DateTime? pushedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? subscribersCount,
    License? license,
  }) =>
      Repo(
        id: id ?? this.id,
        name: name ?? this.name,
        fullName: fullName ?? this.fullName,
        owner: owner ?? this.owner,
        parent: parent ?? this.parent,
        private: private ?? this.private,
        description: description ?? this.description,
        fork: fork ?? this.fork,
        language: language ?? this.language,
        forksCount: forksCount ?? this.forksCount,
        stargazersCount: stargazersCount ?? this.stargazersCount,
        size: size ?? this.size,
        defaultBranch: defaultBranch ?? this.defaultBranch,
        openIssuesCount: openIssuesCount ?? this.openIssuesCount,
        pushedAt: pushedAt ?? this.pushedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        subscribersCount: subscribersCount ?? this.subscribersCount,
        license: license ?? this.license,
      );

  factory Repo.fromRawJson(String str) => Repo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Repo.fromJson(Map<String, dynamic> json) => Repo(
        id: json["id"],
        name: json["name"],
        fullName: json["full_name"],
        owner: json["owner"],
        parent: json["parent?"],
        private: json["private"],
        description: json["description"],
        fork: json["fork"],
        language: json["language?"],
        forksCount: json["forks_count"],
        stargazersCount: json["stargazers_count"],
        size: json["size"],
        defaultBranch: json["default_branch"],
        openIssuesCount: json["open_issues_count"],
        pushedAt: json["pushed_at"] == null
            ? null
            : DateTime.parse(json["pushed_at"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        subscribersCount: json["subscribers_count?"],
        license: json["license?"] == null
            ? null
            : License.fromJson(json["license?"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "full_name": fullName,
        "owner": owner,
        "parent?": parent,
        "private": private,
        "description": description,
        "fork": fork,
        "language?": language,
        "forks_count": forksCount,
        "stargazers_count": stargazersCount,
        "size": size,
        "default_branch": defaultBranch,
        "open_issues_count": openIssuesCount,
        "pushed_at": pushedAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "subscribers_count?": subscribersCount,
        "license?": license?.toJson(),
      };
}

class License {
  String? key;
  String? name;
  String? spdxId;
  String? url;
  String? nodeId;

  License({
    this.key,
    this.name,
    this.spdxId,
    this.url,
    this.nodeId,
  });

  License copyWith({
    String? key,
    String? name,
    String? spdxId,
    String? url,
    String? nodeId,
  }) =>
      License(
        key: key ?? this.key,
        name: name ?? this.name,
        spdxId: spdxId ?? this.spdxId,
        url: url ?? this.url,
        nodeId: nodeId ?? this.nodeId,
      );

  factory License.fromRawJson(String str) => License.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory License.fromJson(Map<String, dynamic> json) => License(
        key: json["key"],
        name: json["name"],
        spdxId: json["spdx_id"],
        url: json["url"],
        nodeId: json["node_id"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "name": name,
        "spdx_id": spdxId,
        "url": url,
        "node_id": nodeId,
      };
}
