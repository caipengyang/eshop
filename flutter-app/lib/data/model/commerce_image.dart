class CommerceImage {
  final int id;
  final String address;

  final String altText;
  final bool isLocal;

  CommerceImage(this.id, this.address, this.altText, {this.isLocal = false});

  CommerceImage.placeHolder()
      : this(0, 'assets/placeholder.png', 'no image', isLocal: true);

  CommerceImage.categoryOneDigital():
        this(1, 'https://cdn.pinduoduo.com/upload/home/img/subject/3c.jpg',
          'Digital(3C)', isLocal: false);

  CommerceImage.categoryOneHome():
      this(2, 'https://cdn.pinduoduo.com/upload/home/img/subject/home.jpg', 'Home', isLocal: false);

  CommerceImage.categoryOneShoes():
        this(3, 'https://cdn.pinduoduo.com/upload/shoes.jpg', 'Shoes', isLocal: false);

  CommerceImage.categoryOneBeauty():
        this(4, 'https://cdn.pinduoduo.com/upload/8db8d549-4fab-41b1-aac5-194df667551f.png', 'Beauty', isLocal: false);

  CommerceImage.categoryOneBaby():
        this(5, 'https://cdn.pinduoduo.com/upload/home/img/subject/baby.jpg', 'Baby', isLocal: false);

  CommerceImage.categoryOneSports():
        this(6, 'https://cdn.pinduoduo.com/upload/home/img/subject/sports.jpg', 'Sports', isLocal: false);
}
