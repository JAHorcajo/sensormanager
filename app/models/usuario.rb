class Usuario < ActiveRecord::Base
  validates_presence_of :nombre, :email
  validates_uniqueness_of :nombre, :message => "El nombre no puede ser repetido"
  validates_uniqueness_of :email, :message => "El email ya existe"
  validates :email, :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
