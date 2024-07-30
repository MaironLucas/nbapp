import 'package:domain/model/team.dart';
import 'package:nbapp/data/remote/model/team_rm.dart';

extension TeamMapper on TeamRM {
  Team toDM() => Team(
        id: id.toString(),
        name: name,
        code: code,
        logoUrl: logo,
        nickName: nickname,
      );
}
