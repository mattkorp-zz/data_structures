require_relative "../lib/recursion"

describe "Recursive Methods" do

  describe 'sum' do

    it "0 should be = 0" do
      expect(prev_sum(0)).to eq(0)
    end

    it "1 should be = 1" do
      expect(prev_sum(1)).to eq(1)
    end

    it "2 should be = 3" do
      expect(prev_sum(2)).to eq(3)
    end

    it "3 should be = 6" do
      expect(prev_sum(3)).to eq(6)
    end

    it "4 should be = 10" do
      expect(prev_sum(4)).to eq(10)
    end

  end

  describe 'fib' do

    it "0 == 0" do
      expect(fib(0)).to eq(0)
    end

    it "1 == 1" do
      expect(fib(1)).to eq(1)
    end

    it "2 == 1" do
      expect(fib(2)).to eq(1)
    end

    it "3 == 2" do
      expect(fib(3)).to eq(2)

    end

    it "4 == 3" do
      expect(fib(4)).to eq(3)
    end

    it "5 == 5" do
      expect(fib(5)).to eq(5)
    end

    it "8 == 21" do
      expect(fib(8)).to eq(21)
    end

  describe 'paren' do
    it "0 == 0" do
      expect(paren(0)).to eq(0)
    end
    it "1 == 2" do
      expect(paren(1)).to eq(2)
    end
    it "2 == 4" do
      expect(paren(2)).to eq(4)
    end
    it "3 == 6" do
      expect(paren(3)).to eq(6)
    end
    it "5 == 10" do
      expect(paren(5)).to eq(10)
    end

  end



  end
end