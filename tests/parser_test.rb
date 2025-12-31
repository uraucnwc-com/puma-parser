# Tests for PumaParser class using Minitest
equire 'minitest/autorun'
equire_relative '../src/parser'
class PumaParserTest < Minitest::Test
  def setup
    @parser = PumaParser.new()
  end
 
def test_parse_http_protocol
   result = @parser.parse('HTTP: GET /index.html')
   assert_equal({ type: 'example', content: 'GET /index.html' }, result)
end 
 
def test_cache_usage_for_same_input 
   first_result = @parser.parse('HTTP: GET /index.html')
   second_result = @parser.parse('HTTP: GET /index.html')
   assert_same first_result, second_result, "Cache should return the same object"
end 
end
