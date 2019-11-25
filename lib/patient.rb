class Patient
    attr_reader :name
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
        Appointment.all.select {|apt| apt.patient == self}
    end

    def doctors
       self.appointments.map(&:doctor)
        # self.appointments.map{|a|a.doctor}
    end

end
