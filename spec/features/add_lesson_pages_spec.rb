require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    visit lessons_path
    click_on 'Create new lesson'
    fill_in 'Name', :with => 'Ruby'
    fill_in 'Content', :with => 'Rails'
    fill_in 'Number', :with => '1'
    click_on 'Submit'
    expect(page).to have_content 'Lessons'
  end

  it "gives an error when no name is entered" do
    visit new_lesson_path
    click_on 'Submit'
    expect(page).to have_content 'errors'
  end
end
