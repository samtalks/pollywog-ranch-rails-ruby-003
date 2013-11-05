class Tadpole < ActiveRecord::Base
 
  belongs_to :frog

end

# tadpole = Tadpole.find_by(:name => "Dustin")
# how do we find Dustin's pond name
# tadpole.frog.pond.name