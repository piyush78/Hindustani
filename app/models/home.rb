class Home < ApplicationRecord
  has_many :home
   has_one :father
   has_one :mother
   validates :Name, :Aadhar, :Dob, :Father, :Mother, :Children, presence: true

  #attr_reader :Name, :Aadhar, :Dob, :Father, :Mother, :Children
end
