require 'test_helper'

class ResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get results_index_url
    assert_response :success
  end

  test "should get accept_csv" do
    get results_accept_csv_url
    assert_response :success
  end

end
