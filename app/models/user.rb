class User < ActiveRecord::Base
    #Event association
    has_and_belongs_to_many :events
end
