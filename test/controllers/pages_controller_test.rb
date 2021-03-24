require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get pricing" do
    get pages_pricing_url
    assert_response :success
  end

  test "should get teams" do
    get pages_teams_url
    assert_response :success
  end

  test "should get reporting" do
    get pages_reporting_url
    assert_response :success
  end

  test "should get tracking" do
    get pages_tracking_url
    assert_response :success
  end

  test "should get classifying" do
    get pages_classifying_url
    assert_response :success
  end
end
