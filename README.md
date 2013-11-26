# Phax [![Build Status](https://travis-ci.org/GeorgeErickson/phax.png?branch=master)](https://travis-ci.org/GeorgeErickson/phax) [![Coverage Status](https://coveralls.io/repos/GeorgeErickson/phax/badge.png)](https://coveralls.io/r/GeorgeErickson/phax)
A simple phaxio api wrapper using faraday.

## API support
See here

## Installation

Add this line to your application's Gemfile:

    gem 'phax'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install phax

## Usage
### Config
1. 
Set `PHAXIO_KEY` and `PHAXIO_SECRET` environment variables

2. Or use initializer

    ```
    Phax.configure do |config|
        config.api_key = '<phaxio public key>'
        config.api_secret = '<phaxio secret key>'
    end
    ```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
