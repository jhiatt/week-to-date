require "spec_helper"
require "date"
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
  it "edge cases match strf time" do
    expect(WeekToDate::GetWeek.week("2017-07-15 00:41:29 -0400")).to eq([28, "Saturday"])
    expect(WeekToDate::GetWeek.week("2017-07-16 00:41:29 -0400")).to eq([29, "Sunday"])
    expect(WeekToDate::GetWeek.week("2017-07-17 00:41:29 -0400")).to eq([29, "Monday"])
  end
end

RSpec.describe WeekToDate::GetDate do
  describe '#get_date' do
    it "converts a week number to a date when lowercase" do
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

    it "edge cases match strf time" do
      expect(WeekToDate::GetDate.get_date(2017, 28, "Saturday")).to eq(Date.parse("2017-07-15"))
      expect(WeekToDate::GetDate.get_date(2017, 29, "Sunday")).to eq(Date.parse("2017-07-16"))
      expect(WeekToDate::GetDate.get_date(2017, 29, "Monday")).to eq(Date.parse("2017-07-17"))
    end
  end

  describe '#date_from_num' do
    it "converts a week number to a date when lowercase" do
      year = 1988
      week_num = 50
      day = 2
      expect(WeekToDate::GetDate.date_from_num(year, week_num, day)).to eq(Date.parse("1988-12-13"))
    end

    it "converts a week number to a date" do
      year = 2017
      week_num = 3
      day = 6
      expect(WeekToDate::GetDate.date_from_num(year, week_num, day)).to eq(Date.parse("2017-1-21"))
    end

    it "edge cases match strf time" do
      expect(WeekToDate::GetDate.date_from_num(2017, 28, 6)).to eq(Date.parse("2017-07-15"))
      expect(WeekToDate::GetDate.date_from_num(2017, 29, 7)).to eq(Date.parse("2017-07-16"))
      expect(WeekToDate::GetDate.date_from_num(2017, 29, 1)).to eq(Date.parse("2017-07-17"))
    end
  end
end
