class Competency < ActiveRecord::Base
  validates_presence_of :name, :european_credits, :level

  validates_uniqueness_of :name, :scope => [:european_credits, :level]


end
