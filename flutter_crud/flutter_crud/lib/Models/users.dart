
class User {
  final String id;
  final String name;
  final String email;
  final String urlavatar;

  const User({
    required this.id,
    required  this.name,
    required this.email,
    this.urlavatar = '',
  });
}
