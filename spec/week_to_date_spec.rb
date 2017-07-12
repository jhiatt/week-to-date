require "spec_helper"
require './lib/week_to_date.rb'

RSpec.describe WeekToDate do
    it "has a version number" do
      expect(WeekToDate::VERSION).not_to be nil
    end

  
end

RSpec.describe WeekToDate::GetWeek do
  it "converts a date to a day of the week" do
    expect(WeekToDate::GetWeek.week("2017-07-12 00:41:29 -0400")).to eq([28, "Wednesday"])
  end
end

RSpec.describe WeekToDate::GetDate do
  it "converts a week number to a date" do
    year = 1988
    week_num = 50
    day = "tuesday"
    expect(WeekToDate::GetDate.get_date(year, week_num, day)).to eq(Date.parse("1988-12-13"))
  end

  it "converts a week number to a date" do
    year = 2017
    week_num = 3
    day = "Saturday"
    expect(WeekToDate::GetDate.get_date(year, week_num, day)).to eq(Date.parse("2017-1-21"))
  end
end
