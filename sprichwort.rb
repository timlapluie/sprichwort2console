#!/usr/bin/env ruby

# frozen_string_literal: true

require 'net/http'

uri = URI('http://sprichwortgenerator.de')
begin
  website = Net::HTTP.get(uri)
  puts website.match(%r{<div class="spwort">(.*)<\/div>})[1]
rescue StandardError
  nil
end
