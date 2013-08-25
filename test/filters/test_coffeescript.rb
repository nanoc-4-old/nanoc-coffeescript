# encoding: utf-8

require 'helper'

class Nanoc::CoffeeScript::FilterTest < Minitest::Test

  def test_filter
    # Create filter
    filter = ::Nanoc::CoffeeScript::Filter.new

    # Run filter (no assigns)
    result = filter.run('alert 42')
    assert_equal("(function() { alert(42); }).call(this); ", result.gsub(/\s+/, ' '))
  end

end
