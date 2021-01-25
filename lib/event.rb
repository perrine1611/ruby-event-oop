class Event

attr_accessor :start_date, :duration, :title, :attendees

def initialize (start_date, duration, title, attendees=[])
	@start_date = Time.parse(start_date)
	@duration = duration.to_i *60
	@title = title.to_s
	@attendees = attendees
end

def postpone_24h (start_date)
	@start_date = start_date + 60*60*24
	return @start_date
end

def end_date (start_date, duration)
	@end_date = start_date + duration
	return @end_date
end

def is_past?
	if start_date < Time.now
	return true
	else return false
	end
end

def is_future?
	!self.is_past?
end

def is_soon?
	if start_date < Times.now + 60*30
	return true
	else return false
	end
end

def to_s
	puts "> Titre : #{@title}"
	puts "> Date de début : #{@start_date}"
	puts "> Durée : #{@duration/60} minutes "
	puts "> Invités : #{@attendees}"
end

end