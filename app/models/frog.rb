class Frog < ActiveRecord::Base
  # Write the appropriate ActiveRecord associatons 
  # for this model to match the the relationships 
  # described in the README.md file.
 
  has_many :tadpoles
  belongs_to :pond


end