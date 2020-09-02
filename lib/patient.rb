class Patient
  attr_accessor :name
  @@all = [] 
  def initialize(name)
    @name = name
    @@all << self 
  end
def self.all 
  @@all 
end 
def new_appointment(date,patient)

end



def doctors 
  Appointment.all.select do |x|
    binding.pry
  end 
end 
end 