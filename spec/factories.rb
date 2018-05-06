FactoryBot.define do
  factory :user do
    email "joe10@gmail.com"
    password_digest "notpassword"
  end

  factory :complaint do
    body "I HATE this song and i CAN'T stop listening to it. Tricked by the red headed crooner ONCE again."
    song "Shape of You"
  end
end