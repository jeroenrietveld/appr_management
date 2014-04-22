class AddEstimationToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :estimation, :integer
  end
end
