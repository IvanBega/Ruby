require_relative 'task2'
RSpec.describe Customer do
  it "should return correct string representation" do
    customer = Customer.new(1, "Ivanov", "Ivan", "Ivanovych", "Flower str 1", "5555-444", "718")
    expect(customer.to_s).to eq "1 | Ivanov Ivan Ivanovych | Flower str 1 | 718 - 5555-444"
  end
end

RSpec.describe Customers do
  it "should sort customers in alphabetical order" do
    c1 = Customer.new(1, "Ivanov", "Ivan", "Ivanovych", "Flower str 1", "5555-444", "718")
    c2 = Customer.new(1, "Petrov", "Ivan", "Ivanovych", "Flower str 1", "5555-444", "718")
    c3 = Customer.new(1, "Johnson", "Ivan", "Ivanovych", "Flower str 1", "5555-444", "718")
    customers = Customers.new([c1, c2, c3])
    sorted = customers.sortByAlphabet
    sorted.each do
      |c|
      puts c
    end
  end
  it "should return customers with credit card in interval" do
    c1 = Customer.new(1, "Ivanov", "Ivan", "Ivanovych", "Flower str 1", 12, 718)
    c2 = Customer.new(1, "Petrov", "Ivan", "Ivanovych", "Flower str 1", 15, 718)
    c3 = Customer.new(1, "Johnson", "Ivan", "Ivanovych", "Flower str 1", 18, 555)
    customers = Customers.new([c1, c2, c3])
    result = customers.getCustomersWithCardInInterval(14, 20)
    expect(result.length). to eq 2
  end
end
