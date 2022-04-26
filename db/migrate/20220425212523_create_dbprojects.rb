class CreateDbprojects < ActiveRecord::Migration[7.0]
  def change
    create_table :dbprojects do |t|
      t.string :name
      t.text :description
      t.date :timestart
      t.date :timeend
      
      t.timestamps
    end
  end
end
