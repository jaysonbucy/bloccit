require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.new(title: "New quesiton title", body: "New question body", resolved: false) }
  let(:answer) { Answer.new(question: question, body: "New answer body") }

  it "should respond to body" do
    expect(answer).to respond_to(:body)
  end

end
