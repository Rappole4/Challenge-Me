require 'test_helper'

class CompchallengesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compchallenge = compchallenges(:one)
  end

  test "should get index" do
    get compchallenges_url
    assert_response :success
  end

  test "should get new" do
    get new_compchallenge_url
    assert_response :success
  end

  test "should create compchallenge" do
    assert_difference('Compchallenge.count') do
      post compchallenges_url, params: { compchallenge: {  } }
    end

    assert_redirected_to compchallenge_url(Compchallenge.last)
  end

  test "should show compchallenge" do
    get compchallenge_url(@compchallenge)
    assert_response :success
  end

  test "should get edit" do
    get edit_compchallenge_url(@compchallenge)
    assert_response :success
  end

  test "should update compchallenge" do
    patch compchallenge_url(@compchallenge), params: { compchallenge: {  } }
    assert_redirected_to compchallenge_url(@compchallenge)
  end

  test "should destroy compchallenge" do
    assert_difference('Compchallenge.count', -1) do
      delete compchallenge_url(@compchallenge)
    end

    assert_redirected_to compchallenges_url
  end
end
