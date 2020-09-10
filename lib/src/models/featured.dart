class FeaturedFoods {
  final String image;
  final String name;
  final String rating;
  final String price;
  final bool wishList;
  final String vendor;

  FeaturedFoods(
      {this.wishList,
      this.vendor,
      this.image,
      this.name,
      this.rating,
      this.price});
}
