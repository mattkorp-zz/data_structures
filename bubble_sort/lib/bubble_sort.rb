class BubbleSort

  def initialize(array)
    @unsorted = array
    @sorted = []
    @left
    @right
  end

  def sort
    # Loop from end of array to the beginning
    num = 1
    for i in num..@unsorted.length - 2
      # make array of indeces to loop through
      indeces = (i..@unsorted.length - 1).to_a.reverse
      # loop through each index
      #binding.pry
      indeces.each do |ind|
        # start at end of array, set last two values for comparison
        @right = @unsorted[ind]
        @left = @unsorted[ind-1]
        # if bigger value is to the left exchange
        if @left > @right
          temp = @right
          @unsorted[ind] = @left
          @unsorted[ind-1] = @right
        end
      end
      # increment counter so sorted values are not tested again
      num += 1
    end
  end

  def to_s
    puts @unsorted
  end
end