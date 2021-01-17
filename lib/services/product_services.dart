part of 'services.dart';

class ProductServices {
  static Future<ApiReturnValue<List<Product>>> getProducts(
      {http.Client client}) async {
    client ??= http.Client();

    String url = 'http://demo73.energeek.co.id/kasir-app/public/api/produk';

    var response = await client.get(url);

    if (response.statusCode != 200) {
      return ApiReturnValue(message: "Data Gagal Diambil");
    }

    var data = jsonDecode(response.body);

    List<Product> products = (data['data']['data'] as Iterable).map((e) => Product.fromJson(e)).toList();

    return ApiReturnValue(value: products);
  }
}
