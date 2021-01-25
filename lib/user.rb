class User

attr_accessor :email, :age, :selected_user
@@all_users = []

def initialize(email_to_save, age_to_save)
   @email = email_to_save
   @age = age_to_save
   @@all_users << self
end

def self_all
  return @@all_users
end

def self.find_by_email(email)
    @selected_user = @@all_users.select { |user| user.email == email }
    return @selected_user
end

end
