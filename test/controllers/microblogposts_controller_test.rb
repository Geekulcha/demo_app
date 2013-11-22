require 'test_helper'

class MicroblogpostsControllerTest < ActionController::TestCase
  setup do
    @microblogpost = microblogposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microblogposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microblogpost" do
    assert_difference('Microblogpost.count') do
      post :create, microblogpost: { content: @microblogpost.content, user_id: @microblogpost.user_id }
    end

    assert_redirected_to microblogpost_path(assigns(:microblogpost))
  end

  test "should show microblogpost" do
    get :show, id: @microblogpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microblogpost
    assert_response :success
  end

  test "should update microblogpost" do
    patch :update, id: @microblogpost, microblogpost: { content: @microblogpost.content, user_id: @microblogpost.user_id }
    assert_redirected_to microblogpost_path(assigns(:microblogpost))
  end

  test "should destroy microblogpost" do
    assert_difference('Microblogpost.count', -1) do
      delete :destroy, id: @microblogpost
    end

    assert_redirected_to microblogposts_path
  end
end
