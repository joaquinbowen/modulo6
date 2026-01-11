class Servidorcorreo {
  static final Servidorcorreo _instancia = Servidorcorreo._interno();
  factory Servidorcorreo() => _instancia;
  Servidorcorreo._interno();

  bool _conectado=false;
  bool get estaConectado=>_conectado;

  void conectar(){
    if(!_conectado){
      _conectado=true;
      print("Conexion al servidor correcta");
    }else{
      print("Ya existe una conexion activa");
    }
  }

  void enviarCorreo(String destinatario,String asunto){
    if(_conectado){
      print("$asunto ha sido enviado a $destinatario");
    }else{
      print("No se ha establecido conexion con el servidor");
    }
  }

  void desconectar(){
    if(_conectado){
      _conectado=false;
      print("Se ha desconectado del servidor");
    }else{
      print("No existe una conexion activa");
    }
  }

}
