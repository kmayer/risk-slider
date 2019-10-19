require "rails_helper"

RSpec.describe Vote, type: :model do
  it "has values for every metric from its containing Exercise" do
    exercise = build(:exercise)

    vote = exercise.votes.build

    expect(vote.props).to eq(
      "defect_free" => 0,
        "finish_fast" => 0,
        "great_ux" => 0,
        "lots_of_features" => 0,
        "visually_stunning" => 0
    )
  end
end
