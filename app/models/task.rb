class Task < ActiveRecord::Base
  belongs_to :priority
  belongs_to :person

  validates_presence_of :name, :priority_id
end
