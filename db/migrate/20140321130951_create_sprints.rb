class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.date :startdate
      t.date :enddate
      t.string :name

      t.timestamps
    end
  end
end
