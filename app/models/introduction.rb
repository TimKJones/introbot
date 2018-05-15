class Introduction < ApplicationRecord
  has_and_belongs_to_many :employees

  after_create :set_scheduled_intro_date

  private

  def set_scheduled_intro_date
    SetScheduleIntroDateJob.perform_later(self.id)
  end
end
