// ignore_for_file: file_names

class ModeloAvaliativo{

  late int _id;
  late String _amostra_controle;
  late String _amostra_testada;
  late String _nota;

  ModeloAvaliativo(this._amostra_controle,this._amostra_testada,this._nota);



  int get id =>_id;
  String get amostra_controle => _amostra_controle;
  String get amostra_testada =>_amostra_testada;
  String get nota =>_nota;

  set amostra_controle(String newamostracontrole){
    this.amostra_controle = newamostracontrole;
  }

  set amostra_testada(String newamostratestada){
    this.amostra_testada = newamostratestada;
  }

  set nota(String newnota){
    this._nota = newnota;
  }

  Map<String, dynamic> toMap(){
    var map = Map<String, dynamic>();
    if( id != null ){
      map["id"] =_id;
    }
    map['amostra_controle']=_amostra_controle;
    map['amostra_testada']=_amostra_testada;
    map['nota']=_nota;
    return map;

  }

  ModeloAvaliativo.fromMapObject(Map<String, dynamic> map){
    this._id =map['id'];
    this._amostra_controle=map['amostra_controle'];
    this._amostra_testada=map['amostra_testada'];
    this.nota=map['nota'];
  }


}