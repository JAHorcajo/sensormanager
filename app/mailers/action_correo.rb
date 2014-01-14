class ActionCorreo < ActionMailer::Base
  default from: "from@example.com"

  def sensores_email(id)
	@id = id
	@sensores = Usuarioequipo.joins("inner join usuarios on usuarios.id = usuarioequipos.Usuarios_id inner join categoria_equipos on categoria_equipos.id = usuarioequipos.categoria_equipos_id inner join concentradors on concentradors.categoria_equipo_id = categoria_equipos.id inner join sensors on sensors.Concentrador_id = concentradors.id inner join medidas on medidas.Sensor_id = sensors.id").where("usuarios.id = ?",@id).select("usuarios.nombre as User, usuarios.email as email, categoria_equipos.nombre as categoria, concentradors.nombre as concentrador, sensors.nombre as sensor, medidas.valor, sensors.parametro")
	@url  = 'http://192.168.149.130:3000'
        mail(to: @sensores[0].email, subject: 'Datos Obtenidos Por Los Sensores')
  end

end
