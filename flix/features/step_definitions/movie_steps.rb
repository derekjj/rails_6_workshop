Given /^I have only have Movies titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Movie.create!(title: title,
      duration: 0,
      total_gross: 0,
      released_on: "2019-04-26",
      description: "abcdefghijklmnopqrstuvwxyz",
      rating: 'PG-13'
    )
  end
end