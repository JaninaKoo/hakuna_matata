require 'test_helper'

class BeachesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get beaches_index_url
    assert_response :success
  end

  test "should get new" do
    get beaches_new_url
    assert_response :success
  end

  test "should get create" do
    get beaches_create_url
    assert_response :success
  end

  test "should get show" do
    get beaches_show_url
    assert_response :success
  end

  test "should get destroy" do
    get beaches_destroy_url
    assert_response :success
  end

end
