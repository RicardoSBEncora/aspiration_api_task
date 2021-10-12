require 'people'
require 'airborne'
require 'pry'

describe People do
  describe "INDEX" do
    before(:each) do
      get 'https://swapi.dev/api/people'
      @people = []
      total_pages = (1 + json_body[:count] / 10)
      for i in 1..total_pages do
        get "https://swapi.dev/api/people/?page=#{i}"
        @people.concat(json_body[:results])
      end
    end

    context "gets all people in get request" do
      it "checks the length of people after all the people page responses have been merged" do
        expect_status(200)
        expect(@people.length).to eq(82)
      end
    end

    context "retrieves tall people only from all people in get requests" do
      it "retrieves people taller than 200 and confirms names" do
        tall_people_names = ["Darth Vader", "Chewbacca", "Roos Tarpals", "Rugor Nass", "Yarael Poof", "Lama Su", "Tuan Wu", "Grievous", "Tarfful", "Tion Medon"]
        tall_people = People.get_people_taller_than(200, @people)

        expect_status(200)
        expect(tall_people.length).to eq(10)
        expect(People.are_people_names?(tall_people, tall_people_names)).to eq(true)
      end
    end
  end
end