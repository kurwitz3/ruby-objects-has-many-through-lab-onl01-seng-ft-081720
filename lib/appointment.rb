class Appointment
  attr_accessor :date, :patient,:doctor,:patient,:doctor 
  @@all = [] 
   
   def initialize(date,patient,doctor)
    @date = date 
    @patient = patient 
    @doctor = doctor 
    @@all << self  
   
  end 
  def self.all 
    @@all
    binding.pry 
  end 
  
  def patient(date,patient)
  end
  end 