require 'airborne'
require 'pry'

class People

  def self.get_people_taller_than(height, people)
    tall_people = []
    for person in people
      if person[:height].to_i > height
        tall_people << person
      end
    end
    tall_people
  end

  def self.are_people_names?(people, people_names)
    people.length != people_names.length ? (return "People returned are not the same number as people expected") : true
    for person in people
      (return "#{person[:name]} is not included on people names") unless people_names.include? person[:name]
    end
    return true
  end
end