require 'bundler/setup'
require 'vhx'
require 'dotenv'
Dotenv.load

vhx_api_key = ENV['VHX_API_KEY']
raise "You need to declare VHX_API_KEY in .env" if vhx_api_key.nil? || vhx_api_key.empty?

pipedrive_api_key = ENV['PIPEDRIVE_API_KEY']
raise "You need to declare PIPEDRIVE_API_KEY in .env" if pipedrive_api_key.nil? || pipedrive_api_key.empty?

# TODO get stats from VHX site
# subscriber counts, traffic counts
# vhx = Vhx.setup(api_key: api_key)

# TODO fetch Clearbit enrichment data too

# TODO fetch social media stats from Tubular

# Send stuff to Pipedrive
require 'pipedrive-ruby'
Pipedrive.authenticate(pipedrive_api_key)
deal = Pipedrive::Deal.find(489)
puts deal.inspect
puts deal.methods - Object.new.methods
puts deal.vertical


