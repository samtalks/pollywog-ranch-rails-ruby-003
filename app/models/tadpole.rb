class Tadpole < ActiveRecord::Base
  # Write the appropriate ActiveRecord associatons 
  # for this model to match the the relationships 
  # described in the README.md file.
 
  belongs_to :frog

end

# tadpole = Tadpole.find_by(:name => "Dustin")
# how do we find Dustin's pond name
# tadpole.frog.pond.name