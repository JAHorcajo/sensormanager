class ComplejoController < ApplicationController
  before_action :set_complejo, only: [:index, :show]

  # GET /complejo
  # GET /complejo.json
  def index
    @complejos = Sensor.joins("inner join concentradors on concentradors.id = sensors.Concentrador_id inner join categoria_equipos on categoria_equipos.id = concentradors.categoria_equipo_id").select("categoria_equipos.nombre as categoria, concentradors.nombre as concentrador, sensors.nombre as sensor, sensors.parametro as parametro, sensors.valor as valor").order("sensors.created_at ASC")
  end

  def show
	@complejos = Sensor.joins("inner join concentradors on concentradors.id = sensors.Concentrador_id inner join categoria_equipos on categoria_equipos.id = concentradors.categoria_equipo_id").select("categoria_equipos.nombre as Categoria, concentradors.nombre as Concentrador, sensors.nombre as Sensor, sensors.parametro as parametro, sensors.valor as valor").order("sensors.created_at ASC")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complejo
   end

    # Never trust parameters from the scary internet, only allow the white list through.
    def complejo_params
      params.require(:complejo_modelo).permit(:Concentrador_id, :nombre, :descripcion, :estado, :parametro, :valor, :uds)
    end
end
