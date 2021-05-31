require "test_helper"

class TaskTest < ActiveSupport::TestCase
  test 'should not save task without task_name' do
    task = Task.new
    task.task_details = 'This is where you put a description for your task'
  
    assert_not task.save, 'Saved Task without task_name'
    end
  
  test 'should show all task' do
    task = Task.all
    
    assert_not task.save, 'Saved Task without task_name'
  end
  
  test 'edit task' do
   endtest 'task should save' do
    task = Task.new
    task.task_name = "undefined"
    assert task.save, 'Changes did not save'
   end
  end
  
  test 'update task ' do
    task = @task
    task.task_name = "undefined"
    assert task.save, 'Changes did not save'
  end
end
