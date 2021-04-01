FactoryBot.define do
  factory :team do
    association :user

    name { 'テスト' }
    city_id { 2 }
    message { 'テスト' }
    representative { '山田' }
    email { 'test@com' }
    
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
