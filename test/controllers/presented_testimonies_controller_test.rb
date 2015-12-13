require 'test_helper'

class PresentedTestimoniesControllerTest < ActionController::TestCase
  setup do
    @presented_testimony = presented_testimonies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:presented_testimonies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create presented_testimony" do
    assert_difference('PresentedTestimony.count') do
      post :create, presented_testimony: { pacient_id: @presented_testimony.pacient_id, testimony_id: @presented_testimony.testimony_id }
    end

    assert_redirected_to presented_testimony_path(assigns(:presented_testimony))
  end

  test "should show presented_testimony" do
    get :show, id: @presented_testimony
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @presented_testimony
    assert_response :success
  end

  test "should update presented_testimony" do
    patch :update, id: @presented_testimony, presented_testimony: { pacient_id: @presented_testimony.pacient_id, testimony_id: @presented_testimony.testimony_id }
    assert_redirected_to presented_testimony_path(assigns(:presented_testimony))
  end

  test "should destroy presented_testimony" do
    assert_difference('PresentedTestimony.count', -1) do
      delete :destroy, id: @presented_testimony
    end

    assert_redirected_to presented_testimonies_path
  end
end
