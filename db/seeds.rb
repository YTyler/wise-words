class Seed

  def self.begin
    seed = Seed.new
    seed.generate_countries
  end

  def generate_countries
    100.times do |i|
      author = Author.create!(
        name: Faker::TvShows::Simpsons.character,
        house: Faker::Movies::HarryPotter.house, flag:Faker::Nation.flag,
        ssn: Faker::IDNumber.valid
      )
      puts "Author #{i}: #{author.name}"
      5.times do
        quote = author.quotes.new(
          phrase: Faker::Quote.famous_last_words,
          date: Faker::Date.birthday(min_age: 1, max_age: 88),
          author_id: author.id
        )
        author.save
      end
    end
  end
end

Seed.begin

p "Created #{Author.count} Authors, #{Quote.count} Quotes"
