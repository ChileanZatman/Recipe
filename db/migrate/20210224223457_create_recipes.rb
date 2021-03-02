class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.string :preparation, null: false
      t.string :desc_image
      t.string :content, null: false
      t.string :prep_time
      t.string :cook_time
      t.text :ingredients, null: false
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
