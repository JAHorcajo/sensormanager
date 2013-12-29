class CategoriaEquipo < ActiveRecord::Base
	validates_presence_of :nombre
	validates_uniqueness_of :nombre, :message => "El nombre debe ser Unico"
	validates :nombre, :format => { :with => /\A[\w\.\-\_]+\z/ }
	
end
