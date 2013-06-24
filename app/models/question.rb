class Question < ActiveRecord::Base
  attr_accessible :description, :test_id

  belongs_to :test
end
