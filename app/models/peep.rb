require 'data_mapper'
require 'dm-postgres-adapter'

class Peep

include DataMapper::Resource

# these property declarations set the column headers in the 'links' table
property :id,     Serial # Serial means that it will be auto-incremented for every record
property :user,   String
property :message,   String

end
