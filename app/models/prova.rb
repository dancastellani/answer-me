class Prova < ActiveRecord::Base
  attr_accessible :descricao, :nome

  has_many :perguntas
end
