require_relative 'task2'
RSpec.describe 'task2' do
  before(:each) do
    e0 = SportEvent.new("Reminder", Date.new(2022, 12, 1), "Swimming", 5)
    e1 = SchoolEvent.new("Concert1", Date.new(2022, 12, 8), "School 1", 3)
    e2 = ConcertEvent.new("Concert2", Date.new(2022, 12, 8), "J", 4)
    e3 = SportEvent.new("Concert3", Date.new(2022, 12, 8), "Box", 1)
    e4 = Event.new("Concert4", Date.new(2022, 12, 9), 7)
    e5 = Event.new("Concert5", Date.new(2022, 12, 10), 0)
    arr = []
    arr.push(e0, e1, e2, e3, e4, e5)
    @events = Events.new(arr)
  end
  describe 'get by date' do
    it 'should return events with specific date' do
      date = Date.new(2022, 12, 8)
      result = @events.getByDate(date)
      result.each do
        |event|
        expect(event.date).to eq date
      end
    end
  end
  describe 'get shortest event' do
    it 'should return event with closest date' do
      result = @events.getShortestEvent()
      expect(result.name).to eq 'Reminder'
    end
  end
  describe 'should update periodic event' do
    it 'should update date in periodic event' do
      event = PeriodicEvent.new("event", Date.today, 7)
      event.update
      date = Date.new(2022, 12, 15)
      expect(event.date).to eq date
    end
  end

  describe 'get by date range' do
    it 'should return events with date in range' do
      from = Date.new(2022, 12, 8)
      to = Date.new(2022, 12, 9)
      result = @events.getByDateRange(from, to)
      result.each do
      |event|
        expect(event.date).to be >= from
        expect(event.date).to be <= to
      end
    end
  end
end