FactoryBot.define do
  factory :author do
    name { Faker::TvShows::Seinfeld.character }
    house { Faker::Movies::HarryPotter.house }
    flag { Faker::Nation.flag }
    ssn { Faker::IDNumber.valid }
  end
end
