# ChicagoCrimesOneYear

This is a gem that allows you to easily access data about crime in Chicago. 
This is free data available from the city's open data portal at https://data.cityofchicago.org/Public-Safety/Crimes-One-year-prior-to-present/x2n5-8w5q. 
"This dataset reflects reported incidents of crime (with the exception of murders where data exists for each victim) that have occurred in the City of Chicago over the past year, minus the most recent seven days of data."

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chicago_crimes_one_year'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chicago_crimes_one_year

## Usage

To retrieve all the Chicago employees, use this command:

```ruby
ChicagoCrimesOneYear::Crime.all
```

To retrieve employees based on a specific search term:

```ruby
ChicagoCrimesOneYear::Crime.find(YOUR-SEARCH-TERM-HERE)
example:
ChicagoCrimesOneYear::Crime.find(Western)
example:
ChicagoCrimesOneYear::Crime.find(Robbery)
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/chicago_crimes_one_year/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
