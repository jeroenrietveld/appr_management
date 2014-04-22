class RenameTasksPersonIdToUserId < ActiveRecord::Migration
  def change
    rename_column :tasks, :person_id, :user_id
  end
end
