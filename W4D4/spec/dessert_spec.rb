require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef" , name: "Zarif") }
  subject(:cake){Dessert.new("cake", 10, :chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(cake.type).to eq("cake")
    end

    it "sets a quantity" do
      expect(cake.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(cake.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("cake", "ten", :chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cake.add_ingredient("apple")
      expect(cake.ingredients).to eq(["apple"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      cake.add_ingredient("apple")
      cake.add_ingredient("pear")
      cake.add_ingredient("mango")
      cake.add_ingredient("chocolate")
      cake.mix!
      expect(cake.ingredients).not_to eq(cake.ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
    cake.eat(2)
    expect(cake.quantity).to eq(8)
    end
    it "raises an error if the amount is greater than the quantity" do
    expect{cake.eat(100)}.to raise_error("the amount is greater than the quantity")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      expect(cake).to receive(:serve)
      expect(chef).to receive(:titleize).with(:name)

      expect(cake.serve).to eq("Chef Zarif the Great Baker has made 10 cakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
    
      expect(chef).to receive(:make_more).with(cake)
      chef.make_more(cake)
    end
  end
end
