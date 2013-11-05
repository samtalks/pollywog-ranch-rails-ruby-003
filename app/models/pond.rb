class Pond < ActiveRecord::Base

 has_many :frogs, :dependent => :destroy
 has_many :tadpoles, :dependent => :destroy

end