# NullObject
#### Null Object Design Pattern Ruby implementation
[![travis-ci](https://secure.travis-ci.org/martinciu/nullobject.png?branch=master)](http://travis-ci.org/martinciu/nullobject)
## Intent

The intent of a Null Object is to encapsulate the absence of an object by providing a substitutable alternative that offers suitable default do nothing behavior. In short, a design where “nothing will come of nothing”

More about Null Object Pattern you can find here:

* [http://en.wikipedia.org/wiki/Null_Object_pattern](http://en.wikipedia.org/wiki/Null_Object_pattern)
* [http://sourcemaking.com/design_patterns/null_object](http://sourcemaking.com/design_patterns/null_object)
* [http://avdi.org/devblog/2011/05/30/null-objects-and-falsiness](http://avdi.org/devblog/2011/05/30/null-objects-and-falsiness/)

See also the [avdi/naught](https://github.com/avdi/naught) gem for extended variations of the null object pattern for Ruby 1.9.

## Usage

    # examples from http://avdi.org/devblog/2011/05/30/null-objects-and-falsiness/

    Null::Object.instance.foobar.baz.buz

    def Maybe(value)
      case value
      when nil then Null::Object.instance
      else value
      end
    end

    def slug(title)
      Maybe(title).strip.downcase.tr('^[0-9a-z]', '-')
    end

    h = {}

    slug(h[:missing_key]) # => ""

    foo = Null::Object.instance

    foo.to_s # => ""
    foo.to_a # => []
    foo.to_i # => 0
    foo.to_f # => 0.0
    foo.nil? # => true

    # Custom Null Object

    class FooNullObject
      include Null

      def to_bar
        "nothing here"
      end
    end

    foo = FooNullObject.instance
    foo.to_bar # => "nothing here"
    foo.to_s   # => ""

## Setup

If you are using bundler add nullobject to your Gemfile:

    gem 'nullobject'

Then run:

    bundle install

Otherwise install the gem:

    gem install nullobject

and require it in your project:

    require 'nullobject'

## Development

Source hosted at [GitHub](http://github.com/martinciu/nullobject).
Report Issues/Feature requests on [GitHub Issues](http://github.com/martinciu/nullobject/issues).

Tests can be ran with `rake test`

### Note on Patches/Pull Requests

 * Fork the project.
 * Make your feature addition or bug fix.
 * Add tests for it. This is important so I don't break it in a
   future version unintentionally.
 * Commit, do not mess with rakefile, version, or history.
   (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
 * Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2012 Marcin Ciunelis. See [LICENSE](https://github.com/martinciu/nullobject/blob/master/LICENSE) for details.
