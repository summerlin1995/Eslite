require 'test_helper'

class ProductPhotosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_photos_index_url
    assert_response :success
  end

  test "should get show" do
    get product_photos_show_url
    assert_response :success
  end

  test "should get create" do
    get product_photos_create_url
    assert_response :success
  end

  test "should get new" do
    get product_photos_new_url
    assert_response :success
  end

  test "should get destroy" do
    get product_photos_destroy_url
    assert_response :success
  end

end
