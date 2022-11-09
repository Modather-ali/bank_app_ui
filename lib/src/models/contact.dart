class Contact {
  final String name;
  final String phone;
  final String image;
  final bool available;

  Contact(
      {required this.name,
      required this.phone,
      required this.image,
      required this.available});
}

List<Contact> contacts = [
  Contact(
    name: 'Haley Sanders',
    phone: '+090078601',
    image: '',
    available: false,
  ),
  Contact(
    name: 'Zayn Michel',
    phone: '+090078601',
    image: '',
    available: false,
  ),
  Contact(
    name: 'Thomas Denver',
    phone: '+090078601',
    image: '',
    available: true,
  ),
];
