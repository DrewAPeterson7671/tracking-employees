require 'rails_helper'

describe Division do
  it { should have_many(:employees) }
  it { should validate_presence_of (:div_name) }
  it { should validate_length_of(:div_name).is_at_most(30) }
end

describe Division do
  it("titleizes the name of an division") do
    division = Division.create({div_name: "giant steps"})
    expect(division.div_name()).to(eq("Giant Steps"))
  end
end
