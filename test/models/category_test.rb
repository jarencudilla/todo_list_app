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

  test 'edit Category' do
   endtest 'category should save' do
    category = Category.new
    category.category_name = "undefined"
    assert category.save, 'Changes did not save'
   end
  end

  test 'update category ' do
    category = @category
    category.category_name = "undefined"
    assert category.save, 'Changes did not save'
  end
end