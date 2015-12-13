require 'test_helper'

class DisordersControllerTest < ActionController::TestCase
  setup do
    @disorder = disorders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disorders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disorder" do
    assert_difference('Disorder.count') do
      post :create, disorder: { description: @disorder.description, disorder_group_id: @disorder.disorder_group_id, name: @disorder.name }
    end

    assert_redirected_to disorder_path(assigns(:disorder))
  end

  test "should show disorder" do
    get :show, id: @disorder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disorder
    assert_response :success
  end

  test "should update disorder" do
    patch :update, id: @disorder, disorder: { description: @disorder.description, disorder_group_id: @disorder.disorder_group_id, name: @disorder.name }
    assert_redirected_to disorder_path(assigns(:disorder))
  end

  test "should destroy disorder" do
    assert_difference('Disorder.count', -1) do
      delete :destroy, id: @disorder
    end

    assert_redirected_to disorders_path
  end
end
