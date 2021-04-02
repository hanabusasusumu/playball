FactoryBot.define do
  factory :team do
    association :user

    name { 'テスト' }
    city_id { 2 }
    message { 'テスト' }
    representative { '山田' }
    email { 'test@com' }
    
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.jpg'), filename: 'test_image.jpg')
    end
  end
end
