require 'mongoid'

class Patient
  include Mongoid::Document
  store_in collection: 'patient'

  field :patientSequenceNumber, type: String

end