require 'test_helper'

class MarronesControllerTest < ActionController::TestCase
  setup do
    @marron = marrones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marrones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marron" do
    assert_difference('Marron.count') do
      post :create, :marron => @marron.attributes
    end

    assert_redirected_to marron_path(assigns(:marron))
  end

  test "should show marron" do
    get :show, :id => @marron.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @marron.to_param
    assert_response :success
  end

  test "should update marron" do
    put :update, :id => @marron.to_param, :marron => @marron.attributes
    assert_redirected_to marron_path(assigns(:marron))
  end

  test "should destroy marron" do
    assert_difference('Marron.count', -1) do
      delete :destroy, :id => @marron.to_param
    end

    assert_redirected_to marrones_path
  end
end
