require 'test_helper'

class PogsControllerTest < ActionController::TestCase
  setup do
    @pog = pogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pog" do
    assert_difference('Pog.count') do
      post :create, pog: {  }
    end

    assert_redirected_to pog_path(assigns(:pog))
  end

  test "should show pog" do
    get :show, id: @pog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pog
    assert_response :success
  end

  test "should update pog" do
    patch :update, id: @pog, pog: {  }
    assert_redirected_to pog_path(assigns(:pog))
  end

  test "should destroy pog" do
    assert_difference('Pog.count', -1) do
      delete :destroy, id: @pog
    end

    assert_redirected_to pogs_path
  end
end
