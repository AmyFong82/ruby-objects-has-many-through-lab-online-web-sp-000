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
  
  def new_appointment(doctor, date)
     Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointments.all.select {|appointment| appointment.patient == self}
  end

  def patients
    appointments.collect {|appointment| appointment.patient}
  end
  
end