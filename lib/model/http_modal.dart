import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:recipe_app/model/api_class.dart';

// getBakingData() async {
//   var response = await http.get(
//     Uri.http('d17h27t6h515a5.cloudfront.net',
//         'topher/2017/May/59121517_baking/baking.json'),
//   );
//   var jsonData = jsonDecode(response.body);
//   print(jsonData);
// }

// class ApiProvider {
//   Future<List<Recipe>> getRecipe(int id) async {
//     var response = await http.get(
//       Uri.http('d17h27t6h515a5.cloudfront.net',
//           'topher/2017/May/59121517_baking/baking.json'),
//     );
//   }
// }
