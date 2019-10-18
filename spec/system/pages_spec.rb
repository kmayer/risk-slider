require "rails_helper"

describe "Home Pages" do
  it "I should be able to start a new exercise" do
    visit root_path

    expect(page).to have_title "Risk Slider"

    click_on "New Exercise"

    click_on "Create Exercise"

    expect(page).to have_content "Ready to Rock & Roll"
    exercise = Exercise.first
    expect(page).to have_content "Share this URL with all your friends: #{exercise_vote_url(exercise)}"

    visit exercise_vote_path(exercise)

    expect(page).to have_content "Vote Early, Vote Often"
  end

  # Another contrived example, this one relies on the javascript driver.
  xit "/ should include the warm closing text 'Enjoy!'", js: true do
    visit root_path

    expect(page).to have_content "Hello, Stranger!"
  end
end
