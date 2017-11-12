FactoryGirl.define do
  factory :song do
    genre            "hip hop"
    song_name        "Mar eske tuaf"
    duration         "5 min"
    song_url         "https://www.youtube.com/watch?v=u2inQ1WeaFs"
    artist           { build(:artist) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
