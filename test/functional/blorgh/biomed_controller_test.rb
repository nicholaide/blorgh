require 'test_helper'

module Blorgh
  class BiomedControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end
  
  end
end
