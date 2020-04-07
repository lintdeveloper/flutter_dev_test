import 'package:flutterdevtest/src/core/repo/repo.model.dart';
import 'package:flutterdevtest/src/utils/constants.dart';
import 'package:flutterdevtest/src/utils/utils.dart';

class RepositoryDataSource {
  NetworkUtil _netUtil = new NetworkUtil();


  // Get repositories
  Future<List<Item>> getRepositoryItems({String pageCount, Function errorCallback}) async {
    final filerPerPage = 10;
    final String queryParam = "flutter+language:dart";
    var url = Constants.SEARCH_URL + '/repositories/?q=$queryParam&page=$pageCount&per_page=$filerPerPage';

    var headers = {
      "Accept": "application/json",
      "Content-Type": "application/json"
    };
    String msg;

    try {
      final responsePayload = await _netUtil.get(url, headers: headers);
      print(responsePayload);
      return Repo.fromJson(responsePayload).items;
    } on CustomException catch (e) {
      msg = e.msg == null ? Constants.REPO_RETRIEVAL_ERROR_MSG : e.msg;
    } catch (e) {
      msg = e.toString();
    }
    errorCallback(msg);
    throw CustomException(msg: msg);
  }
}