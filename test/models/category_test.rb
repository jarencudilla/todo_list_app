require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test 'should not save Category without category_name' do
  category = Category.new
  category.category_details = 'This is where you put a description for your category'

  assert_not category.save, 'Saved Category without category_name'
  end

  test 'should show all Category' do
    category = Category.all
  
    assert_not category.save, 'Saved Category without category_name'
    end
  test 'should create a new Category' do
    category = Category.all
  end

  test 'can edit a Category' do
  end


end

