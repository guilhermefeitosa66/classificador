require 'test_helper'

class DiagnosedDisordersControllerTest < ActionController::TestCase
  setup do
    @diagnosed_disorder = diagnosed_disorders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diagnosed_disorders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diagnosed_disorder" do
    assert_difference('DiagnosedDisorder.count') do
      post :create, diagnosed_disorder: { diagnosis_id: @diagnosed_disorder.diagnosis_id, disorder_id: @diagnosed_disorder.disorder_id }
    end

    assert_redirected_to diagnosed_disorder_path(assigns(:diagnosed_disorder))
  end

  test "should show diagnosed_disorder" do
    get :show, id: @diagnosed_disorder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diagnosed_disorder
    assert_response :success
  end

  test "should update diagnosed_disorder" do
    patch :update, id: @diagnosed_disorder, diagnosed_disorder: { diagnosis_id: @diagnosed_disorder.diagnosis_id, disorder_id: @diagnosed_disorder.disorder_id }
    assert_redirected_to diagnosed_disorder_path(assigns(:diagnosed_disorder))
  end

  test "should destroy diagnosed_disorder" do
    assert_difference('DiagnosedDisorder.count', -1) do
      delete :destroy, id: @diagnosed_disorder
    end

    assert_redirected_to diagnosed_disorders_path
  end
end
