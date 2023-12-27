# StdgemsVersion

The `StdgemsVersion` is a gem to look up the version of a default/bundled gem installed with the executing Ruby.

## Installation

Add this line to your application's Gemfile and then execute `bundle install` command:


```ruby
gem 'stdgems_version'
```

Or install it yourself as:

```
$ gem install stdgems_version
```

## Usage

Give the bundled/default gem name of which you want to know version to the `StdgemsVersion.version` method:

```ruby
StdgemsVersion.version('csv') # => "3.2.8" for Ruby 3.0.0
                              # => "3.2.6" for Ruby 3.2.2
```

### Using for CI

You need to checkout this repository before executing `bundle install` to install dependencies. This is an example for GitHub Actions:

```yaml
steps:
  - name: Checkout this repository
    uses: actions/checkout@v4

  - name: Checkout stdgems-version repository
    uses: actions/checkout@v4
    with:
      repository: taichi-ishitani/stdgems-version
      path: stdgems-version
      submodules: true

  - name: Setup Ruby
    uses: ruby/setup-ruby@v1
    with:
      ruby-version: ${{ matrix.ruby }}
      bundler-cache: true
```

Then, you need to load this gem from your Gemfile like below:

```ruby
require_relative 'stdgems-version/lib/stdgems_version'
gem 'csv', StdgemsVersion.version('csv')
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/taichi-ishitani/stdgems-version. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/taichi-ishitani/stdgems-version/blob/master/CODE_OF_CONDUCT.md).

## Copyright & License

Copyright 2023 Taichi Ishitani. The StdgemsVersion gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Notice

This gem uses the list of default/bundled gems maintaind by the [stdgems.org](https://stdgems.org) project.
See [stdgems.org](https://stdgems.org) and [stdgems/README.md](https://github.com/janlelis/stdgems/blob/main/README.md) for futher details.

## Code of Conduct

Everyone interacting in the StdgemsVersion project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/taichi-ishitani/stdgems-version/blob/master/CODE_OF_CONDUCT.md).
