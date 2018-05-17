class ModelReferences < ActiveRecord::Migration[5.2]
  def change
    remove_column :doses, :cocktail_id
    remove_column :doses ,:ingredient_id
    add_reference :doses, :ingredient, foreign_key: true
    add_reference :doses, :cocktail, foreign_key: true
  end
end
