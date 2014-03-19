class AddPrioIdToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :prio_id, :integer
  end
end
