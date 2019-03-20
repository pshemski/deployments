class CreateJoinTableCategoryTemplate < ActiveRecord::Migration
  def up
    create_table :categories_templates do |t|
      t.belongs_to :category, index: true
      t.belongs_to :template, index: true
    end
  end

  def down
    drop_table :categories_templates
  end
end
