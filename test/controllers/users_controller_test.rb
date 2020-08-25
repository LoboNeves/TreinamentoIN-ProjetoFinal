require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { cep: @user.cep, email: @user.email, kind: @user.kind, lastname: @user.lastname, name: @user.name, password_digest: @user.password_digest, phone_number: @user.phone_number, residencial_number: @user.residencial_number } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { cep: @user.cep, email: @user.email, kind: @user.kind, lastname: @user.lastname, name: @user.name, password_digest: @user.password_digest, phone_number: @user.phone_number, residencial_number: @user.residencial_number } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
