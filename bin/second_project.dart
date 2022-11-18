

void main() {

  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'verde e amarela';
  String sabor = 'doce';
  int diasDesdeColheita = 40;
  bool isMadura = funcEstaMadura(diasDesdeColheita);
  mostrarMadura(nome, diasDesdeColheita,cor: "Verde e amarela");
  int quantosDias = funcDiasAteMadura(diasDesdeColheita);
  Fruta fruta01 = Fruta(nome,peso,cor,sabor, diasDesdeColheita);
  Fruta fruta02 = Fruta('uva', 30.4, 'roxa', 'azeda', 12);
  fruta01.estaMadura(30);


  }
  class Fruta{
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;
  Fruta(this.nome, this.peso, this.cor,this.sabor, this.diasDesdeColheita, {this.isMadura});
  estaMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para amadurecer");

  }


  }
  funcDiasAteMadura(int dias){
  int diasParaMadura = 30;
  int quantosDiasFaltam = dias - diasParaMadura;
  return quantosDiasFaltam;

  }

mostrarMadura (String nome, int dias, {String? cor}){
  if (dias >= 30){
    print("A $nome está madura");

  }else {
    print("A $nome não está madura");

  }
  if ( cor != null){
    print('A $nome é $cor');
  }

}

bool funcEstaMadura(int dias){
  if (dias >= 30 ){
    return  true;
  }else {
    return false;}

}