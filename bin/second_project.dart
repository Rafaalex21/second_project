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
  Legumes abobrinha = Legumes('Abobrinha', 'verde', 357, "salgada", true);
  Legumes cenoura = Legumes('cenoura', 'laranja', 213, "salgada", false);
  Citricas abacaxi = Citricas('pineapple', 890, 'amarelo', 'doce', 18, 2);
  nozes castanha = nozes('Castanha', 72, 'marrom', 'salgado', 130, 5);
  castanha.printAlimento();
  abacaxi.printAlimento();
  abobrinha.printAlimento();
  cenoura.printAlimento();

  abobrinha.cozinhar();
  cenoura.cozinhar();

  cenoura.separarIngredientes();
  cenoura.fazerMassa();
  cenoura.assar();
  abacaxi.separarIngredientes();
  abacaxi.fazerMassa();
  abacaxi.assar();
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

class Legumes extends Alimento implements bolo {
  bool isPrecisaCozinhar;

  Legumes(String nome, String cor, double peso, String sabor,
      this.isPrecisaCozinhar)
      : super(nome, cor, peso, sabor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto a(o) $nome está cozido');
    } else {
      print('não é necessário cozinhar');
    }
  }

  @override
  void assar() {
    print('assar a massa no forno');
  }

  @override
  void fazerMassa() {
    print('misturar ingredientes com farinha');
  }

  @override
  void separarIngredientes() {
    print('preparar e separar os ingredientes');
  }
}

class Fruta extends Alimento implements bolo{
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(String nome, double peso, String cor, String sabor,
      this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, cor, peso, sabor);

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para amadurecer");
  }

  @override
  void assar() {
  print('assar a massa no forno');
  }

  @override
  void fazerMassa() {
  print('misturar ingredientes com farinha');
  }

  @override
  void separarIngredientes() {
  print('separar os ingredientes');
  }


}

class Citricas extends Fruta implements bolo {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo,
      {bool? isMadura})
      : super(nome, peso, cor, sabor, diasDesdeColheita);
  @override
  void assar() {
    super.assar();
  }

  @override
  void fazerMassa() {
    print('pegar a $nome,ovos, óleo, leite...');
    super.fazerMassa();
  }

  @override
  void separarIngredientes() {
    print('pegar a $nome');
    super.separarIngredientes();
  }
}

class nozes extends Fruta {
  double nivelSeco;

  nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelSeco)
      : super(nome, peso, cor, sabor, diasDesdeColheita);
}

abstract class bolo {
  void separarIngredientes();

  void fazerMassa();

  void assar();
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
