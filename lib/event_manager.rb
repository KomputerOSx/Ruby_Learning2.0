# frozen_string_literal: true
# puts 'Event Manager Initialized!'
require 'csv'
require 'colorize'

contents = CSV.open("event_attendees.csv", headers: true, header_converters: :symbol)


# def clean_zipcode(zipcode)
#
#   if zipcode.nil?
#     '00000'
#   elsif zipcode.length < 5
#     zipcode.rjust(5, '0')
#   elsif zipcode.length > 5
#     zipcode[0..4]
#   else
#     return zipcode
#   end
#
# end

# def clean_zipcode(zipcode)
#   zipcode.to_s.rjust(5, '0')[0..4]
# end
#
# contents.each do |line|
#   name = line[:first_name]
#   zipcode = clean_zipcode(line[:zipcode]).colorize(:green)
#
#   puts "#{name} lives at #{zipcode} zipcode"
#
# end

require 'google/apis/civicinfo_v2'

civic_info = Google::Apis::CivicinfoV2::CivicInfoService.new

civic_info.key = 'AIzaSyClJY9g3S05Uk2aA0GpQhoj-sPfUd95nOg'

response = civic_info.representative_info_by_address(address: 80202, levels: 'country', roles: ['legislatorUpperBody', 'legislatorLowerBody'])

puts response