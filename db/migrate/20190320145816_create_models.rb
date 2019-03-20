class CreateModels < ActiveRecord::Migration
  def up
    create_table :models do |t|
      t.string :name
      t.string :picture

      t.timestamps null: false
    end
  end

  def down
    drop_table :models
  end
end
