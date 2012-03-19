require 'test_helper'

class BlogEntriesControllerTest < ActionController::TestCase
  setup do
    @blog_entry = blog_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog_entry" do
    assert_difference('BlogEntry.count') do
      post :create, :blog_entry => @blog_entry.attributes
    end

    assert_redirected_to blog_entry_path(assigns(:blog_entry))
  end

  test "should show blog_entry" do
    get :show, :id => @blog_entry.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @blog_entry.to_param
    assert_response :success
  end

  test "should update blog_entry" do
    put :update, :id => @blog_entry.to_param, :blog_entry => @blog_entry.attributes
    assert_redirected_to blog_entry_path(assigns(:blog_entry))
  end

  test "should destroy blog_entry" do
    assert_difference('BlogEntry.count', -1) do
      delete :destroy, :id => @blog_entry.to_param
    end

    assert_redirected_to blog_entries_path
  end
end
