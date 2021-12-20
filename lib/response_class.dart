class MyResponses {
  late final List<MyResponse> responses;

  MyResponses(this.responses);

  MyResponses.fromJson(List<dynamic> parsed) {
    responses = parsed.map((e) => MyResponse.fromJson(e)).toList();
  }
}

class MyResponse {
  final String? roomNumber;
  final String? path;
  final RoomView? roomView;

  MyResponse({
    this.roomNumber,
    this.path,
    this.roomView,
  });

  MyResponse.fromJson(Map<String, dynamic> json)
      : roomNumber = json['roomNumber'] as String?,
        path = json['path'] as String?,
        roomView = json['roomView'] == ""
            ? RoomView(borders: [])
            : (RoomView.fromJson(json['roomView']));

  Map<String, dynamic> toJson() =>
      {'roomNumber': roomNumber, 'path': path, 'roomView': roomView?.toJson()};
}

class RoomView {
  List<Borders>? borders = [];

  RoomView({
    this.borders,
  });

  RoomView.fromJson(Map<String, dynamic> json) {
    (json['borders'] as List).forEach((element) {
      borders?.add(Borders.fromJson(element));
    });
  }

  Map<String, dynamic> toJson() => {
        'borders': borders!.map((e) => e.toJson()).toList(),
      };
}

class Borders {
  final String? d;
  final String? borderColor;
  final bool? isBorderShadow;

  Borders({
    this.d,
    this.borderColor,
    this.isBorderShadow,
  });

  Borders.fromJson(Map<String, dynamic> json)
      : d = json['d'] as String?,
        borderColor = json['borderColor'] as String?,
        isBorderShadow = json['isBorderShadow'] as bool?;

  Map<String, dynamic> toJson() =>
      {'d': d, 'borderColor': borderColor, 'isBorderShadow': isBorderShadow};
}
