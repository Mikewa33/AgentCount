class CreateAgents < ActiveRecord::Migration[5.1]
  def change
    create_table :agents do |t|
      t.integer :counter
      t.string :name, unique: true
      t.timestamps
    end
  end
end
