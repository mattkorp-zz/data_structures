require 'pry'
require 'pry-nav'

array = []
5.times do
  array << (1..5).to_a
end
binding.pry



row_limit = array.length

if(row_limit > 0)
  col_limit = array[0].length
  num_row_iterations = [i+1, row_limit].max - [0, i-1].max
  num_col_iterations = [j+1, col_limit].max - [0, j-1].max

  num_row_iterations.times do
    num_col_iterations.times do
      if(x != i || y != j)
        p array[x][y]
      end
    end
  end
end
#   for(x = [0, i-1].max; x <= [i+1, row_limit].min; x++) do
#     for(y = [0, j-1].max; y <= [j+1, col_limit].min; y++) do

#       if(x != i || y != j)
#         p array[x][y]
#       end

#     end
#   end
# end
