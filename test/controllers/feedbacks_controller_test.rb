require 'test_helper'

class FeedbacksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get feedbacks_new_url
    assert_response :success
  end

  test "should get create" do
    get feedbacks_create_url
    assert_response :success
  end

  test "should get index" do
    get feedbacks_index_url
    assert_response :success
  end

  test "should get show" do
    get feedbacks_show_url
    assert_response :success
  end

  test "should get edit" do
    get feedbacks_edit_url
    assert_response :success
  end

  test "should get update" do
    get feedbacks_update_url
    assert_response :success
  end

  test "should get destroy" do
    get feedbacks_destroy_url
    assert_response :success
  end

end
