require 'test_helper'

class CompChallengesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comp_challenge = comp_challenges(:one)
  end

  test "should get index" do
    get comp_challenges_url
    assert_response :success
  end

  test "should get new" do
    get new_comp_challenge_url
    assert_response :success
  end

  test "should create comp_challenge" do
    assert_difference('CompChallenge.count') do
      post comp_challenges_url, params: { comp_challenge: {  } }
    end

    assert_redirected_to comp_challenge_url(CompChallenge.last)
  end

  test "should show comp_challenge" do
    get comp_challenge_url(@comp_challenge)
    assert_response :success
  end

  test "should get edit" do
    get edit_comp_challenge_url(@comp_challenge)
    assert_response :success
  end

  test "should update comp_challenge" do
    patch comp_challenge_url(@comp_challenge), params: { comp_challenge: {  } }
    assert_redirected_to comp_challenge_url(@comp_challenge)
  end

  test "should destroy comp_challenge" do
    assert_difference('CompChallenge.count', -1) do
      delete comp_challenge_url(@comp_challenge)
    end

    assert_redirected_to comp_challenges_url
  end
end
