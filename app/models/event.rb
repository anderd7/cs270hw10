class Event < ActiveRecord::Base
    #user association
    has_and_belongs_to_many :participants, class_name:'User'
end
