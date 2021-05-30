require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest

  test 'get tasks in index' do
    get tasks_path

    assert_response :success
  end
  test 'get new task' do
    get new_task_path
  
    assert_response :success
  end
  test 'create new task' do
    post create_task_path, params: {category: { task_name: 'undefined', task_details: 'Details go here' }}
    
    assert_response :redirect
  end
  test "show task" do
    get task_path(@task.id)
    assert_response :success
  end
  test "go to edit category and edit the category" do
    get task_path(@task.id)
    assert_response :success
  
    put task_path(@task.id), params: {category: { category_name: 'undefined', category_details: 'Details go here' } }
    assert_response :redirect
  
    follow_redirect!
    assert_response :success
  end

  test "should view one category and delete a task" do
    get category_path(@category)
    assert_response :success

    assert_difference "Task.count", -1 do
      delete category_task_path(@category, @task)
      assert_response :redirect
    end
  
    follow_redirect!
    assert_response :success
  end
end
