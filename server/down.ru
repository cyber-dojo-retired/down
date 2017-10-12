require 'rack'
require_relative 'src/down'

use Rack::Static, :urls => [ '/images' ]

run Down.new
