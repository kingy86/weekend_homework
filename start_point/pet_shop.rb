def pet_shop_name(name)
  return name[:name]
end

def total_cash(sum)
  return sum[:admin][:total_cash]
end

def add_or_remove_cash(name, cash)
  name[:admin][:total_cash] += cash
end

def pets_sold(name)
  return name[:admin][:pets_sold]
end

def increase_pets_sold(name, sold)
  return name[:admin][:pets_sold] += sold
end

def stock_count(count)
  return count[:pets].length
end
# @pet_shop = {
#   pets: [
#     {
#       name: "Sir Percy",
#       pet_type: :cat,
#       breed: "British Shorthair",
#       price: 500
#     },

def pets_by_breed(pet_shop, breed)
  new_pet = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      new_pet << pet
    end
  end
  return new_pet
end
# pets = pets_by_breed(@pet_shop, "British Shorthair")
# assert_equal(2, pets.count)

#   pets = pets_by_breed(@pet_shop, "Dalmation")
#   assert_equal(0, pets.count)

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets][:name]
    if pet == pet_shop
      puts pet
    end
  end
  return nil
end
# pet = find_pet_by_name(@pet_shop, "Arthur")
# assert_equal("Arthur", pet[:name])
def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      p pet_shop[:pets].delete(pet)
    end
  end
end
# remove_pet_by_name(@pet_shop, "Arthur")
# pet = find_pet_by_name(@pet_shop,"Arthur")
# assert_nil(pet)
def add_pet_to_stock(pet_shop, new_pet)
  new_pet.shift(pet_shop)[:pets]
  return pet_shop
end
# add_pet_to_stock(@pet_shop, @new_pet)
# count = stock_count(@pet_shop)
# assert_equal(7, count)

def customer_cash(customer)
  return customer[:cash]
end
# cash = customer_cash(@customers[0])
# assert_equal(1000, cash)

def remove_customer_cash(customer, cash)
  customer[:cash] -= cash
end
# customer = @customers[0]
# remove_customer_cash(customer, 100)
# assert_equal(900, customer[:cash])

def customer_pet_count(customer)
  if customer[:pets] == []
  return 0
  end
end
# count = customer_pet_count(@customers[0])
# assert_equal(0, count)

def add_pet_to_customer(customer, new_pet)

  return customer
end
# customer = @customers[0]
# add_pet_to_customer(customer, @new_pet)
# assert_equal(1, customer_pet_count(customer))
