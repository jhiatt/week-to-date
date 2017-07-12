# WeekToDate

This gem is for apps that use calendars or dates in both monthly and weekly formats.  If you are tracking events using the week number (i.e. out of the 52 weeks in a year) and days of the week but you need to convert those days to a traditional date format, use this gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'week_to_date'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install week_to_date

## Usage

1. To get the day, run this command: 

  WeekToDate::GetDate.date_from_num(year, week_number, day_number)

  - For the week_number, enter the week in the year.
  - For day_number enter the position the day holds in the following array
    [monday, tuesday, wednesday, thursday, friday, saturday, sunday]

  You can enter the day as a string with the following command:

  WeekToDate::GetDate.get_date(year, week_number, day_as_string)

2. To get the week and day number within the week (according to the array above), run this command:
  
  WeekToDate::GetWeek.week(date)

  - Enter the date in the format "year-month-day"
  - Make sure date is formated as a string

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/week_to_date.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

