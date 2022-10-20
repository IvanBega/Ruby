class Customer
  attr_accessor :id, :address, :patronymic, :card, :account, :first_name, :last_name
  def initialize(id, last_name, first_name, patronymic, address, card, account)
    @id = id
    @last_name = last_name
    @first_name = first_name
    @patronymic = patronymic
    @address = address
    @account = account
    @card = card
  end

  def to_s
    "#{@id} | #{@last_name} #{@first_name} #{@patronymic} | #{@address} | #{@account} - #{@card}"
  end
end

customer = Customer.new(1, "Ivanov", "Ivan", "Ivanovych", "Flower str 1", "5555444", "718")
puts customer

class Customers
  attr_accessor :customers
  def initialize(customers)
    @customers = customers
  end

  def sortByAlphabet
    customers.sort_by do
      |c|
      c.last_name
    end
  end

  def getCustomersWithCardInInterval(min, max)
    result = []
    customers.each do
      |c|
      if c.card > min && c.card < max
        result.push(c)
      end
    end

    result
  end
end