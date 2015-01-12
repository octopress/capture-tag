# Octopress Capture Tag

A more powerful capture liquid tag. Features:

- Conditional capture
- Filters
- Support additive assignment with `+=` operator

[![Build Status](https://travis-ci.org/octopress/capture-tag.svg)](https://travis-ci.org/octopress/capture-tag)
[![Gem Version](http://img.shields.io/gem/v/octopress-capture-tag.svg)](https://rubygems.org/gems/octopress-capture-tag)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://octopress.mit-license.org)

## Installation

If you're using bundler add this gem to your site's Gemfile in the `:jekyll_plugins` group:

    group :jekyll_plugins do
      gem 'octopress-capture-tag'
    end

Then install the gem with Bundler

    $ bundle

To install manually without bundler:

    $ gem install octopress-capture-tag

Then add the gem to your Jekyll configuration.

    gems:
      -octopress-capture-tag

## Usage

Use the capture tag like normal.

```
{% capture var1 %}
awesome
{% endcapture %}

{{ var1 }}           //=> awesome
```

Filter captured content.

```
{% capture var1 | upcase %}
awesome
{% endcapture %}

{{ var1 }}           //=> AWESOME
```

Append to variables with capture.
    
```
{% assign var1 = 'awesome' }}

{% capture var1 += %}
sauce
{% endcapture %}

{{ var1 }}        //=> awesome sauce
```

Note: the `+=` operator will act as a normal capture if the
capture variable is `nil`.

Conditionally capture.

``
{% capture greeting if true %}
Hi Guys
{% endcapture %}

{% capture greeting unless false %}
Hi Guys
{% endcapture %}
``

## Contributing

1. Fork it ( https://github.com/octopress/capture-tag/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
