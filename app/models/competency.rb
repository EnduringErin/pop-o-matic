class Competency < ActiveRecord::Base
  validates_presence_of :name, :european_credits, :level
end
