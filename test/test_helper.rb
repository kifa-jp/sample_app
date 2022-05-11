ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require "minitest/reporters"
Minitest::Reporters.use!

# 単体テストヘルパーの定義
class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  include ApplicationHelper

  # テストユーザーがログイン中の場合にtrueを返す
  def is_logged_in?
    !session[:user_id].nil?
  end

  # テストユーザーとしてログインする
  def log_in_as(user)
    session[:user_id] = user.id
  end
end

# 統合テストヘルパー定義
class ActionDispatch::IntegrationTest
  # テストユーザーとしてログインする
  def log_in_as(user, password: "password", remember_me: "1")
    post login_path(
      params: {
        session: {
          email: user.email,
          password:,
          remember_me:
        }
      }
    )
  end
end
