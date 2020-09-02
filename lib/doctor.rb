class Doctor
  attr_accessor :name, :patient,:appointment
@@all = []
def initialize(name)
  @name = name 
@@all << self 

end 
def self.all 
  @@all 
end 
def appointments 
  Appointment.all.select do |x|
    x.doctor == self 
      
end
end
def new_appointment(date,patient)
  Patient.new(date,patient)
end 
  def patients 
    new = [] 
    Appointment.all.select do |x|
      new <<  x.patients 
      binding.pry 
    end 
    new 
  end 

end 
