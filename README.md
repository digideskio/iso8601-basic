iso8601-basic
=============

A very basic implementation of the ISO8601 spec

```ruby
gem 'iso8601-basic', require 'iso8601'
```

## Joining date/time parts:

```ruby
date = ISO8601::Date.new '2010-01-01' # => #<ISO8601::Date: 2010-01-01>
time = ISO8601::Time.new '10:30'      # => #<ISO8601::Time: T10:30:00+00:00>

date + time # => #<ISO8601::DateTime: 2010-01-01T10:30:00+00:00>
```

## Working with durations:

When working with times:

```ruby
duration = ISO8601::Duration.new 'PT1H' # => #<ISO8601::Duration: PT1H>
time     = ISO8601::Time.new '10:30'    # => #<ISO8601::Time: T10:30:00+00:00>

time + duration # => #<ISO8601::Time: T11:30:00+00:00>
```

And with dates:

```ruby
duration = ISO8601::Duration.new 'P1D'    # => #<ISO8601::Duration: P1D>
date     = ISO8601::Date.new '2010-01-01' # => #<ISO8601::Date: 2010-01-01>

date + duration # => #<ISO8601::Time: 2010-01-02>
```

All together now:

```ruby
duration  = ISO8601::Duration.new 'P1DT1H'           # => #<ISO8601::Duration: P1DT1H>
date_time = ISO8601::DateTime.new '2010-01-01T10:30' # => #<ISO8601::DateTime: 2010-01-01T10:30:00+00:00>

date_Time + duration # => #<ISO8601::DateTime: 2010-01-02T11:30:00+00:00>
```