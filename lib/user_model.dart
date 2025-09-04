class User{
  // Attributes
  final String name;
  final String profession;
  final String image;

  // Constructor
  User(this.name, this.profession, this.image);

}

/// Object always declare outside the class
// Object to store multiple data of user
List<User> users = [
  User('Grace Anderson', 'Software Engineer', 'person1.jpg'),
  User('Sophia Brown', "Flutter Developer", 'person2.jpg'),
  User('Charlotte Harris', "Web Developer", 'person3.jpg'),
  User('Autumn Lane', "Rect Developer", 'person4.jpg'),
  User('Sophie Tyler', "Artist", 'person5.jpg'),
  User('Sierra Stone', "Junior Engineer", 'person6.jpg'),
];
