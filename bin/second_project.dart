void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'verde e amarela';
  String sabor = 'doce';
  int diasDesdeColheita = 40;
  bool isMadura = funcEstaMadura(diasDesdeColheita);
  mostrarMadura(nome, diasDesdeColheita, cor: "Verde e amarela");
  int quantosDias = funcDiasAteMadura(diasDesdeColheita);
  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
  Fruta fruta02 = Fruta('uva', 30.4, 'roxa', 'azeda', 12);
  fruta01.estaMadura(30);
}

class Alimento {
  String nome;
  double peso;
  String cor;
  String sabor;

  Alimento(this.nome, this.cor, this.peso, this.sabor);

  void printAlimento() {
    print(
        'Este alimento se chma $nome, pesa $peso gramas, é $cor e tem sabor $sabor.');
  }
}

class Legumes extends Alimento {
  bool isPrecisaCozinhar;

  Legumes(String nome, String cor, double peso, String sabor,
      this.isPrecisaCozinhar)
      : super(nome, cor, peso, sabor);
  void cozinhar(){
    if(isPrecisaCozinhar = true ){
      print('Pronto o $nome está cozido');
    }else{
      print('não é necessário cozinhar');
    }
  }
}

class Fruta extends Alimento {

  int diasDesdeColheita;
  bool? isMadura;

  Fruta(String nome, double peso, String cor, String sabor, this.diasDesdeColheita,
      {this.isMadura}):super(nome,cor, peso, sabor);

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para amadurecer");
  }
}

class Citricas {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;
  double nivelAzedo;

  Citricas(this.nome, this.cor, this.peso, this.sabor, this.diasDesdeColheita,
      this.nivelAzedo,
      {this.isMadura});
}

class nozes {
  String nome;
  double peso;
  String cor;
  String sabor;
  double nivelSeco;

  nozes(this.nome, this.cor, this.peso, this.sabor, this.nivelSeco);
}

funcDiasAteMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = dias - diasParaMadura;
  return quantosDiasFaltam;
}

mostrarMadura(String nome, int dias, {String? cor}) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }
  if (cor != null) {
    print('A $nome é $cor');
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
