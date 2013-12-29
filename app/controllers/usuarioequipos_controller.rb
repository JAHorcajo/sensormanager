class UsuarioequiposController < ApplicationController
  before_action :set_usuarioequipo, only: [:show, :edit, :update, :destroy, :select_usuario]

  # GET /usuarioequipos
  # GET /usuarioequipos.json
  def index
    @usuarioequipos = Usuarioequipo.joins("inner join usuarios on usuarios.id = usuarioequipos.Usuarios_id inner join categoria_equipos on categoria_equipos.id = usuarioequipos.Categoria_equipos_id").select("usuarioequipos.id,usuarios.nombre as Usuario, categoria_equipos.nombre as Categoria").order("usuarioequipos.id ASC")  
  end

  # GET /usuarioequipos/1
  # GET /usuarioequipos/1.json
  def show
    @usuarioequipos = Usuarioequipo.joins("inner join usuarios on usuarios.id = usuarioequipos.Usuarios_id inner join categoria_equipos on categoria_equipos.id = usuarioequipos.Categoria_equipos_id").select("usuarioequipos.id,usuarios.nombre as Usuario, categoria_equipos.nombre as Categoria").order("usuarioequipos.id ASC").where("usuarioequipos.id = ?",params[:id])
  end

  # GET /usuarioequipos/new
  def new
	@usuarioequipo = Usuarioequipo.new
  end

  # GET /usuarioequipos/1/edit
  def edit
  end

  # POST /usuarioequipos
  # POST /usuarioequipos.json
  def create
    @usuarioequipo = Usuarioequipo.new(usuarioequipo_params)

    respond_to do |format|
      if @usuarioequipo.save
        format.html { redirect_to @usuarioequipo, notice: 'Usuarioequipo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @usuarioequipo }
      else
        format.html { render action: 'new' }
        format.json { render json: @usuarioequipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuarioequipos/1
  # PATCH/PUT /usuarioequipos/1.json
  def update
    respond_to do |format|
      if @usuarioequipo.update(usuarioequipo_params)
        format.html { redirect_to @usuarioequipo, notice: 'Usuarioequipo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @usuarioequipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarioequipos/1
  # DELETE /usuarioequipos/1.json
  def destroy
    @usuarioequipo.destroy
    respond_to do |format|
      format.html { redirect_to usuarioequipos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuarioequipo
      @usuarioequipo = Usuarioequipo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuarioequipo_params
      params.require(:usuarioequipo).permit(:Usuarios_id, :categoria_equipos_id)
    end
end
