FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@factory.com" }
  sequence(:username) { |n| "user#{n}" }

  factory :user do
    name 'Savor'
    email {FactoryGirl.generate :email}
    username {FactoryGirl.generate :username}
    password_digest BCrypt::Password.create('testpassword')
    admin false
  end

  # This will use the User class (Admin would have been guessed)
  factory :admin, class: User do
    id 1483
    name 'Admin'
    email {FactoryGirl.generate :email}
    username {FactoryGirl.generate :username}
    password_digest BCrypt::Password.create('testpassword')
    admin true
  end
end

