require 'test_helper'

class JobtitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobtitle = jobtitles(:one)
  end

  test "should get index" do
    get jobtitles_url
    assert_response :success
  end

  test "should get new" do
    get new_jobtitle_url
    assert_response :success
  end

  test "should create jobtitle" do
    assert_difference('Jobtitle.count') do
      post jobtitles_url, params: { jobtitle: { name: @jobtitle.name } }
    end

    assert_redirected_to jobtitle_url(Jobtitle.last)
  end

  test "should show jobtitle" do
    get jobtitle_url(@jobtitle)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobtitle_url(@jobtitle)
    assert_response :success
  end

  test "should update jobtitle" do
    patch jobtitle_url(@jobtitle), params: { jobtitle: { name: @jobtitle.name } }
    assert_redirected_to jobtitle_url(@jobtitle)
  end

  test "should destroy jobtitle" do
    assert_difference('Jobtitle.count', -1) do
      delete jobtitle_url(@jobtitle)
    end

    assert_redirected_to jobtitles_url
  end
end
