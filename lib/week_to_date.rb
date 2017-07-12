require 'date'
require 'pry'
require "week_to_date/version"

module WeekToDate

  class GetDate

    def self.get_date(year, week_number, day)
      if day.downcase == "monday" then day_num = 1 end
      if day.downcase == "tuesday" then day_num = 2 end
      if day.downcase == "wednesday" then day_num = 3 end
      if day.downcase == "thursday" then day_num = 4 end
      if day.downcase == "friday" then day_num = 5 end
      if day.downcase == "saturday" then day_num = 6 end
      if day.downcase == "sunday" then day_num = 7 end
      self.date_from_num(year, week_number, day_num)
    end

    def self.date_from_num(year, week_number, day)
      date = Date.commercial(year, week_number, day)
    end
  end

  class GetWeek


    def self.week(date)
      day = Date.parse(date).strftime("%A")
      week_num = Date.parse(date).strftime("%U").to_i
      array = [week_num, day]
      return array
    end
  end


end
