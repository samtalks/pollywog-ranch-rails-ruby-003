class Pond < ActiveRecord::Base
  # Write the appropriate ActiveRecord associatons 
  # for this model to match the the relationships 
  # described in the README.md file.
 has_many :frogs
 has_many :tadpoles

end