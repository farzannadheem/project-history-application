require "test_helper"

class ProjectConversationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get project_conversations_create_url
    assert_response :success
  end
end
