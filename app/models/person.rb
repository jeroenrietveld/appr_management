class Person < ActiveRecord::Base
  has_many :tasks

  def full_name
    [self.firstname, self.prefix, self.lastname].reject(&:blank?).join(' ')
  end
end
