# encoding: utf-8

require 'coffee-script'

module Nanoc::CoffeeScript

  class Filter < Nanoc::Filter

    identifier :coffeescript

    def run(content, params = {})
      ::CoffeeScript.compile(content)
    end

  end

end
