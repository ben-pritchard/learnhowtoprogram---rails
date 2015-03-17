require 'rails_helper'

describe 'the edit a lesson process' do
  it 'edits a lesson' do
    lesson = Lesson.create(:name => 'Ruby', :content => 'rails on ruby')
    visit lesson_path(lesson)
    click_on 'Edit'
    fill_in "Name", :with => 'dooby'
    click_on 'Submit'
    expect(page).to have_content 'dooby'
  end

  it 'gives error when no lesson name is entered' do
    lesson = Lesson.create(:name => 'computer', :content => "they do stuff really fast")
    visit lesson_path(lesson)
    click_on 'Edit'
    fill_in "Content", :with => ''
    click_on 'Submit'
    expect(page).to have_content 'errors'
  end
end
