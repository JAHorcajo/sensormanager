class Concentrador < ActiveRecord::Base
  belongs_to :categoria_equipo
  validates_presence_of :nombre
  validates_uniqueness_of :nombre, :message => "El nombre no puede ser repetido"
  validates :nombre, :format => {:with => /\A[\w\.\-\_]+\z/ }
end
