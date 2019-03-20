class CreateTemplates < ActiveRecord::Migration
  def up
    create_table :templates do |t|
      t.string :name

      t.timestamps null: false
    end
  end

  def down
    drop_table :templates
  end
end
