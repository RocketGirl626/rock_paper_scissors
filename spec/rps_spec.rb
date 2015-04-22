require('rspec')
require('./lib/rps')

describe('String#beats') do
  it("will result in a tie if the arguments are the same") do
    expect(("rock").beats("rock")).to(eq("The play results in a tie"))
  end

  it("will result in a tie if the arguments are the same") do
    expect(("rock").beats("scissors")).to(eq("Player 1 wins"))
  end
end
