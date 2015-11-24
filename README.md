# Colorizable

This library provides integration of the [color](https://github.com/halostatue/color) gem with Rails. Use 'colorize' to specify which fields you want to be backed by `Color::RGB` objects.

## Install

Add the gem to your application's Gemfile:

```
gem 'colorizable'
```

And execute:

```
bundle
```

You can also install it yourself using:

```
gem install colorizable
```

## Usage

### ActiveRecord

The Uniform model has three string columns called primary_color, secondary_color, and font_color. Each column has a hex value stored in it. Instead of dealing with a string, it would be helpful to deal with `Color::RGB` objects which provide a number of helpers.

```ruby
class Uniform < ActiveRecord::Base

  colorize :primary_color, :secondary_color, :font_color

end
```

Each color on the model is now a `Color::RGB` object. The objects come with a number of helpers to convert the color to other formats like rgb.

```ruby
uniform = Uniform.new
uniform.primary_color = "#cccccc"
uniform.primary_color.red # 204
uniform.primary_color.green # 204

uniform.secondary_color = { r: 204, g: 204, b: 204 }
uniform.secondary_color.to_s # #cccccc
```

## How to contribute

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Write your tests and check everything passes
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request (into the master branch)

## License

Please refer to [LICENSE](https://github.com/idealprojectgroup/colorizable/blob/master/LICENSE).
