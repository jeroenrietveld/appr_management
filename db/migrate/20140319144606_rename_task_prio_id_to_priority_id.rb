class RenameTaskPrioIdToPriorityId < ActiveRecord::Migration
  def change
    rename_column :tasks, :prio_id, :priority_id
  end
end
