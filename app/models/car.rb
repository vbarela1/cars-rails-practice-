class Car < ApplicationRecord
 
  # Callbacks
  # Associations
  
  def self.makes
    ['Jeep', 'Toyota', 'Ford', 'Chevy']
  end 
 
# did these in Ruby
# Validations
validates_presence_of :make, :model, :year, :color, :runs
#this has to be present and have values for sucessful save
validates_inclusion_of :make, in: makes
#these are the only makes they can put in side of the table 
#constraining data. second line of defense.
#presence, inclusion, uniqueness are the most common. 

  # Instance Methods
  def info
    "#{make} #{model}, was made in #{year} and is #{color}"
  end 

  def make_model
  "#{make} #{model}" 
  end
#have to have car.last.info in terminal 


  # Class Methods.  Scope
  def self.by_year
    #order(:year) ASC default 

    #overriding default descending
    order(year: :desc)
  end 


end
