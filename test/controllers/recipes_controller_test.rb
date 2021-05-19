require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)
    @user = users(:michael)
    get login_path
    post login_path, params: { session: { email:    @user.email,
                                          password: 'password' } }
  
  end
  #prueba no funciona, por no contar con parametros 
  test "should get recipes" do
    get recipes_url
    assert_response :success
  end
  #prueba no funciona, por adicion de restriccion de sesiones
  test "should get new" do
    get new_recipe_url
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post recipes_url, params: { recipe: { content: @recipe.content, cook_time: @recipe.cook_time, desc_image: @recipe.desc_image, ingredients: @recipe.ingredients, name: @recipe.name, prep_time: @recipe.prep_time, preparation: @recipe.preparation, user_id: @recipe.user_id } }
    end

    assert_redirected_to recipe_url(Recipe.last)
  end

  test "should show recipe" do
    get recipe_url(@recipe)
    assert_response :success
  end
#prueba no funciona, por adicion de restriccion de sesiones
  test "should get edit" do
    get edit_recipe_url(@recipe)
    assert_response :success
  end

  test "should update recipe" do
    patch recipe_url(@recipe), params: { recipe: { content: @recipe.content, cook_time: @recipe.cook_time, desc_image: @recipe.desc_image, ingredients: @recipe.ingredients, name: @recipe.name, prep_time: @recipe.prep_time, preparation: @recipe.preparation, user_id: @recipe.user_id } }
    assert_redirected_to recipe_url(@recipe)
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete recipe_url(@recipe)
    end

    assert_redirected_to recipes_url
  end
end
