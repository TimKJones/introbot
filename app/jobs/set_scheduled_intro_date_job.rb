class SetScheduledIntroDateJob < ApplicationJob
  queue_as :default

  def perform(introduction_id)
    introduction = Introduction.find_by_id(introduction_id)
    return if nil_introduction? || not_enough_employees?

    introduction.scheduled_intro_date = find_intro_date(introduction)
  end

  def check_for_nil_introduction(introduction)
    if introduction.nil?
      puts "Error: Introduction is nil: #{introduction.id}"
      return false
    end

    return true
  end

  def not_enough_employees?(introduction)
    if introduction.employees.size < 2
      puts "Error: Not enough employees for an introduction"
      puts "introduction_id: #{introduction.id}"
      return false
    end

    return true
  end

  #TODO: integrate Google Calendar
  def find_intro_date(introduction)
    return nil
  end
end
