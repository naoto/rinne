Rinne
================================================================

Rinne - Rinne is snake case convert to camel case.

[![Build Status](https://travis-ci.org/naoto/rinne.png?branch=master)](https://travis-ci.org/naoto/rinne)
[![Gem Version](https://badge.fury.io/rb/rinne.png)](https://badge.fury.io/rb/rinne)
[![Code CLimate](https://codeclimate.com/github/naoto/rinne.png)](https://codeclimate.com/github/naoto/rinne)
[![Coverage Status](https://coveralls.io/repos/naoto/rinne/badge.png?branch=master)](https://coveralls.io/r/naoto/rinne)

## Installation

Add this line to your application's Gemfile:

    gem 'rinne'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rinne

## Usage

```ruby
require 'rinne'

Rinne.tensei("rine_tensei") #=> "RinneTensei"
Rinne.camelize("rinne_tensei") #=> "RinneTensei"
Rinne.classify("/path/to/rinne_tensei.rb") #=> "RinneTensei"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
