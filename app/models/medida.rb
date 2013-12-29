class Medida < ActiveRecord::Base
  belongs_to :Sensor
  validates :nombre, :format => { :with => /\A[\w\.\-\_]+\z/ }
  validates_presence_of :nombre
  validates_uniqueness_of :nombre, :message => "El nombre debe ser Unico"
end
