# PumaParser: A simple protocol parser
class PumaParser
  def initialize
    @cache = {}
  end

  # Parse a given protocol string
  def parse(protocol_string)
    return @cache[protocol_string] if @cache.key?(protocol_string)
    parsed_data = extract_data(protocol_string)
    @cache[protocol_string] = parsed_data
    parsed_data
  end

  private

  # Simulate data extraction from the protocol string
  def extract_data(protocol_string)
    # Just a mock implementation for demonstration purposes.
    { type: 'example', content: protocol_string.split(':')[1].strip }
  end
end
