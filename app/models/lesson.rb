class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :content, :presence => true
  validates :number, :presence => true

  def next
    nextLessonNumber = self.number.+(1)
    Lesson.all.each do |lesson|
      if lesson.number === nextLessonNumber
        return lesson
      end
    end
    return null
  end
end
