require 'test_helper'

class TicketCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ticket_categories_index_url
    assert_response :success
  end

  test "should get show" do
    get ticket_categories_show_url
    assert_response :success
  end

  test "should get new" do
    get ticket_categories_new_url
    assert_response :success
  end

  test "should get create" do
    get ticket_categories_create_url
    assert_response :success
  end

  test "should get edit" do
    get ticket_categories_edit_url
    assert_response :success
  end

  test "should get update" do
    get ticket_categories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get ticket_categories_destroy_url
    assert_response :success
  end

end
