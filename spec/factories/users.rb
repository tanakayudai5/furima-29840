FactoryBot.define do
  factory :user do
    name                  {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    first_name            {"ぜんかく"}
    firstkana_name        {"ゼンカクカナ"}
    last_name             {"ぜんかく"}
    lastkana_name         {"ゼンカクカナ"}
    birthday              {"2020-01-01"}
    created_at            {Time.now}
    updated_at            {Time.now}
  end
end