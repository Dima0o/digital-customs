class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :name
      t.text :description
      t.integer :start
      t.timestamps
    end
  end
end
