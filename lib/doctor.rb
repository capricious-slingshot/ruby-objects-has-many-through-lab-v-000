class Doctor
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    # Appointment.new(date, patient, self)
  end

  def appointments
    Appointments.all.collect {|a| a.doctor == self}
  end
end
