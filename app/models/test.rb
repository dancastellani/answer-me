class Test < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :questions, dependent: :destroy
end
