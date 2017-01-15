# TODO: this is stubbed
class User
  def name
    Faker::Name.name 
  end

  def constituent_of
    "Senator #{Faker::Name.name}"
  end
end
