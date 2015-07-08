# Itamae::Plugin::Recipe::Php56

Itamae recipe plugin for install PHP 5.6.

## Requirements

### Platform

- RHEL/CentOS 6

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-php56'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-php56

## Attributes

| Key                                         | Type     | Description              | Default                             |
| ------------------------------------------- | -------- | -------------------      | ----------------------------------- |
| `[:php][:additional_packages]`              | String[] | Additional PHP packages  | `[]`                                |
| `[:php][:directives][:short_open_tag]`      | Boolean  | short_open_tag           | `false`                             |
| `[:php][:directives][:max_execution_time]`  | Number   | max_execution_time       | `30`                                |
| `[:php][:directives][:memory_limit]`        | String   | memory_limit             | `128M`                              |
| `[:php][:directives][:error_reporting]`     | String   | error_reporting          | `E_ALL & ~E_DEPRECATED & ~E_STRICT` |
| `[:php][:directives][:display_errors]`      | Boolean  | display_errors           | `false`                             |
| `[:php][:directives][:post_max_size]`       | String   | post_max_size            | `8M`                                |
| `[:php][:directives][:upload_max_filesize]` | String   | upload_max_filesize      | `2M`                                |
| `[:php][:directives][:date_timezone]`       | String   | date.timezone            | `Asia/Tokyo`                        |
| `[:php][:fpm][:user]`                       | String   | fpm user                 | `apache`                            |
| `[:php][:fpm][:group]`                      | String   | fpm group                | `apache`                            |
| `[:php][:fpm][:listen]`                     | String   | fpm listen               | `127.0.0.1:9000`                    |
| `[:php][:fpm][:pm]`                         | String   | fpm pm                   | `dynamic`                           |
| `[:php][:fpm][:pm_max_children]`            | String   | fpm pm.max_children      | `50`                                |
| `[:php][:fpm][:start_servers]`              | String   | fpm pm.start_servers     | `5`                                 |
| `[:php][:fpm][:min_spare_servers]`          | String   | fpm pm.min_spare_servers | `5`                                 |
| `[:php][:fpm][:max_spare_servers]`          | String   | fpm pm.max_spare_servers | `35`                                |

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/itamae-plugin-recipe-php56.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

