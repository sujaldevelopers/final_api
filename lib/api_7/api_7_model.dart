class Api7Model {
  final int id;
  final String createdAt;
  final String name;
  final String price;
  final String updatedAt;
  final String no;

  Api7Model(

      {required this.id,
      required this.createdAt,
      required this.name,
      required this.price,
      required this.updatedAt,
        required this.no, });
}
/*
 // final bool is_generic_service;
  // final bool is_taxable;
  // final int garage_id;
----------------------------------
            "id": 3,
            "createdAt": "2023-06-16T10:57:08.981Z",
            "updatedAt": "2023-06-22T12:00:46.964Z",
            "name": "RF Fender Denting",
            "price": 12500,
            "no": "Service23",
            "is_generic_service": false,
            "is_taxable": false,
            "service_part_category_id": null,
            "garage_id": 1,
            "tax_id": null,
 */
