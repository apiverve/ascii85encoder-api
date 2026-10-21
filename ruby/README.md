# ASCII85 Encoder API - Ruby Gem

ASCII85 Encoder encodes text into Base85 strings or decodes existing ASCII85 payloads back to plain text. Each request returns the converted output with original and processed character counts, while paid plans add custom formats and compression ratios.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_ascii85encoder'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_ascii85encoder
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_ascii85encoder'

# Initialize the client
client = APIVerve::Ascii85encoder::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  text: "Hello World",
  action: "encode",
  format: "standard"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "Hello World", action: "encode", format: "standard" })
  puts response["data"]
rescue APIVerve::Ascii85encoder::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Ascii85encoder::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Ascii85encoder::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "original_text": "Hello World",
    "encoded": "87cURD]i,\"Ebo7",
    "format": "standard",
    "original_length": 11,
    "encoded_length": 14,
    "compression_ratio": "127.27%"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/ascii85encoder?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/ascii85encoder?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/ascii85encoder?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
