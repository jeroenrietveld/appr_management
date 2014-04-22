class Sprint < ActiveRecord::Base
  has_many :tasks

  validates_presence_of :startdate, :enddate, :name
end
