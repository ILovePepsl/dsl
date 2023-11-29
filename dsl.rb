require 'faker'

class TestDataGenerator
  def initialize(&block)
    instance_eval(&block) if block_given?
  end

  def user
    {
      name: Faker::Name.name,
      email: Faker::Internet.email,
      age: rand(18..60)
    }
  end

  def address
    {
      street: Faker::Address.street_address,
      city: Faker::Address.city,
      country: Faker::Address.country
    }
  end
end

data_generator = TestDataGenerator.new do
  5.times { puts user }
  3.times { puts address }
end
