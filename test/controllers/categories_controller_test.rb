require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test 'get categories in index' do
    get categories_path

    assert_response :success
  end
  test 'get new category' do
    get new_category_path
  
    assert_response :success
  end
  test 'create new category' do
    post create_category_path, params: {category: { category_name: 'undefined', category_details: 'Details go here' }}
    
    assert_response :redirect
  end
  test "show category" do
    get category_path(@category.id)
    assert_response :success
  end
  test "go to edit category and edit the category" do
    get category_path(@category.id)
    assert_response :success
  
    put category_path(@category.id), params: {category: { category_name: 'undefined', category_details: 'Details go here' } }
    assert_response :redirect
  
    follow_redirect!
    assert_response :success
  end
  

end