class Home < ApplicationRecord
  has_many :home
   has_one :father
   has_one :mother

  #attr_reader :Name, :Aadhar, :Dob, :Father, :Mother, :Children
end
