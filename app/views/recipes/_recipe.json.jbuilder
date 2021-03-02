json.extract! recipe, :id, :name, :preparation, :desc_image, :content, :prep_time, :cook_time, :ingredients, :user_id, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
