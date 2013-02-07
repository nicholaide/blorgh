require 'test_helper'

module Blorgh
  class PhontelesControllerTest < ActionController::TestCase
    setup do
      @phontele = phonteles(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:phonteles)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create phontele" do
      assert_difference('Phontele.count') do
        post :create, phontele: { text: @phontele.text, title: @phontele.title }
      end
  
      assert_redirected_to phontele_path(assigns(:phontele))
    end
  
    test "should show phontele" do
      get :show, id: @phontele
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @phontele
      assert_response :success
    end
  
    test "should update phontele" do
      put :update, id: @phontele, phontele: { text: @phontele.text, title: @phontele.title }
      assert_redirected_to phontele_path(assigns(:phontele))
    end
  
    test "should destroy phontele" do
      assert_difference('Phontele.count', -1) do
        delete :destroy, id: @phontele
      end
  
      assert_redirected_to phonteles_path
    end
  end
end
