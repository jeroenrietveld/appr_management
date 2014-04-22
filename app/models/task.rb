class Task < ActiveRecord::Base
  belongs_to :priority
  belongs_to :user
  belongs_to :sprint

  validates_presence_of :name, :priority_id
  validates_numericality_of :estimation, :allow_nil => true, :only_integer => true
end
