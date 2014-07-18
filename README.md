# Octopress Capture Tag

A more powerful capture liquid tag. Features:

- Conditional capture
- Support additive assignment with `+=` operator

[![Build Status](https://travis-ci.org/octopress/capture-tag.svg)](https://travis-ci.org/octopress/capture-tag)
[![Gem Version](http://img.shields.io/gem/v/octopress-capture-tag.svg)](https://rubygems.org/gems/octopress-capture-tag)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://octopress.mit-license.org)

## Installation

Add this line to your application's Gemfile:

    gem 'octopress-capture-tag'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install octopress-capture-tag

Next add it to your gems list in Jekyll's `_config.yml`

    gems:
      - octopress-capture-tag

## Usage

Use the capture tag like normal.

    {% capture var1 %}
    awesome
    {% endcapture %}

    {{ var1 }}           //=> awesome

Filter captured content.

    {% capture var1 | upcase %}
    awesome
    {% endcapture %}

    {{ var1 }}           //=> AWESOME

Append to variables with capture.
    
    // Assuming var1 == 'awesome'
    {% capture var1 += %}
    sauce
    {% endcapture %}

    {{ var1 }}        //=> awesome sauce

Note: the `+=` operator will act as a normal capture if the
capture variable is `nil`.

Conditionally capture.

    {% capture greeting if true %}
    Hi Guys
    {% endcapture %}

    {% capture greeting unless false %}
    Hi Guys
    {% endcapture %}

## Contributing

1. Fork it ( https://github.com/octopress/capture-tag/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
