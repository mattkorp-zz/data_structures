require_relative 'bubble_sort'
require 'pry'
#    The array of values to be sorted is divided into two partitions:
#       the partition of sorted values and that of unsorted values.

#    In each step of bubble sort, the smallest element found so far in the unsorted
#       partition moves up, and it is appended to the end of the sorted partition.

#    The sorting proceeds until the elements in the unsorted partition are exhausted.

#    We use ceilingIdx to designate the last element in the sorted partition.

#    The array elements with indexes 0 through ceilingIdx are in the partition of
#       sorted values, and the rest in the patition of unsorted values.

#    Initially, no elements are in the sorted partition, and hence ceilingIdx = -1.

#    While the smallest value found so far moves up within the unsorted partition,
#       it is exchanged with the value above it.

#    Sorted values are shown in blue, and unsorted values in green.


bbl_sort = BubbleSort.new([5,10,2,7,1])
bbl_sort.sort
bbl_sort.to_s

