class Filme {
  late String titulo;
  late int ano;
  late String genero;
  late List elenco;
  late String descricao;
  Filme(){
    titulo = '';
    ano = 0;
    genero = '';
    elenco = [];
    descricao = '';
  }
  Filme.v(this.titulo, this.ano, this.genero, this.elenco, this.descricao);

  Filme.fromJson(Map<String, dynamic> json):
  titulo = json['titulo'] as String,
  ano = json['ano'] as int,
  genero = json['genero'] as String,
  elenco = json['elenco'] as List,
  descricao = json['descricao'] as String;

  Map<String, dynamic> toJson() => {
    'titulo': titulo, 
    'ano': ano,
    'genero': genero,
    'elenco': elenco,
    'descricao':descricao
  };
}
