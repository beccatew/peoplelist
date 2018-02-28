require 'test_helper'

class PeepListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get peep_list_index_url
    assert_response :success
  end

  test "should get show" do
    get peep_list_show_url
    assert_response :success
  end

  test "should get new" do
    get peep_list_new_url
    assert_response :success
  end

end
