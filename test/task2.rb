require 'date'
class Event
  attr_accessor :name, :date, :importance
  def initialize(name, date, importance = 0)
    @name = name
    @date = date
    @importance = importance
  end

  def to_s
    return "#{@name}: #{@date}, importance -  #{@importance}"
  end
end

class PeriodicEvent < Event
  attr_accessor :period
  def initialize(name, date, period)
    super(name, date)
    @period = period
  end
  def update()
    if @date == Date.today
      @date = @date.next_day(period)
    end
  end
end
class SchoolEvent < PeriodicEvent
  attr_accessor :schoolName
  def initialize(name, date, schoolName, importance = 0)
    @schoolName = schoolName
    super(name, date, importance)
  end
  def to_s
    "#{@schoolName}, #{@name}: #{@date}, importance -  #{@importance}, period - #{@period}"
  end
end
class SportEvent < Event
  attr_accessor :sportType
  def initialize(name, date, sportType, importance = 0)
    super(name, date, importance)
    @sportType = sportType
  end
  def to_s
    "#{@sportType}, #{@name}: #{@date}, importance -  #{@importance}, period - #{@period}"
  end
end
class ConcertEvent < Event
  attr_accessor :concertName
  def initialize(name, date, concertName, importance = 0)
    super(name, date, importance)
    @concertName = concertName
  end
  def to_s
    "#{@concertName}, #{@name}: #{@date}, importance -  #{@importance}, period - #{@period}"
  end
end
class Events
  attr_reader :events
  def initialize(events)
    @events = events
  end
  def getByDate(date)
    result = []
    @events.each do
      |event|
      if event.date == date
        result.push(event)
      end
    end
    return result
  end
  def getByDateRange(from, to)
    result = []
    @events.each do
    |event|
      if event.date >= from and event.date <= to
        result.push(event)
      end
    end
    return result
  end
  def sortByDate()
    @events.sort_by {|event| event.date}
  end
  def sortByImportance()
    @events.sort_by {|event| event.importance}
  end
  def getShortestEvent()
    @events.sort_by {|event| event.date}.first
  end
  def sortByName()
    @events.sort_by {|event| event.name}
  end
end