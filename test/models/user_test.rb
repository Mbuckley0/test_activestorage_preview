require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "generate preview" do
    file = File.open("test/fixtures/24.08.25_Malcolm Mendez_ORC1087.pdf")
    user = User.create!(name: "Test")
    user.pdf_file.attach(
      io: file,
      filename: "test-file.pdf",
      content_type: "application/pdf",
    )
  end
end
