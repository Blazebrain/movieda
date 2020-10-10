import 'package:http/http.dart' as http;
import 'dart:convert';

// const api = 'k_G1t9KTc8';
const api = 'k_Fig2Zux5';

const url = "https://imdb-api.com/en/API/Top250Movies/$api";

class Api {
  Future getPfilms() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;

      var pfilms = jsonDecode(data);

      return pfilms;
    } else {
      throw Exception('Failed to retrieve movies');
    }
  }
}

const tvurl = "https://imdb-api.com/en/API/Top250TVs/$api";

class TVApi {
  Future getPTV() async {
    http.Response response = await http.get(tvurl);

    if (response.statusCode == 200) {
      String datas = response.body;

      var pmovies = jsonDecode(datas);

      return pmovies;
    } else {
      throw Exception('Failed to retrieve Pmovies');
    }
  }
}

const csoon = "https://imdb-api.com/en/API/ComingSoon/$api";

class Csoon {
  Future getCsoon() async {
    http.Response response = await http.get(csoon);

    if (response.statusCode == 200) {
      String datase = response.body;

      var comsoon = jsonDecode(datase);

      return comsoon;
    } else {
      throw Exception('Failed to retrieve upcoming movies');
    }
  }
}

class Search {
  Future getSearchResults(movieName) async {
    http.Response response = await http
        .get("https://imdb-api.com/en/API/SearchMovie/$api/$movieName");
    if (response.statusCode == 200) {
      String datase = response.body;

      var searchResults = jsonDecode(datase);

      return searchResults;
    } else {
      throw Exception('Failed to retrieve seached movies');
    }
  }
}
