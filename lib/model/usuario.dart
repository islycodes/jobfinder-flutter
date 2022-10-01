class Usuario {
  String nome;
  String cidade;
  String estado;
  String pais;
  String email;
  String telefone;
  String foto;

  Usuario(
    this.nome,
    this.cidade,
    this.estado,
    this.pais,
    this.email,
    this.telefone,
    this.foto,
  );

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      '${json['name']['first']} ${json['name']['last']}',
      json['location']['city'],
      json['location']['state'],
      json['location']['country'],
      json['email'],
      json['phone'],
      json['picture']['large'],
    );
  }
}
