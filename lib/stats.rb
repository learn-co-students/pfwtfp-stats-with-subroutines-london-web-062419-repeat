# Define your methods here

def mean(array)
    array.sum / array.count.to_f
end

# def median(array)
#     ordered_array = array.sort
#     num_of_elements = array.length
#     # (ordered_array[(num_of_elements - 1) / 2] + ordered_array[num_of_elements / 2]) / 2.0
#     ordered_array[num_of_elements/2]
# end

def median(array)
    sorted = array.sort
    return sorted[array.length / 2 - 1] if array.length.odd?
    p = array.length / 2 - 1
    Float(mean([sorted[p], sorted[p + 1]]))
end

def mode(set)
    table = Hash.new{ |h, k| h[k] = 0 }
    number_and_counts = set.reduce(table) { |memo, e| memo[e] += 1; memo }
    top_count = -1
    top = -1
    number_and_counts.each_pair do |k, n|
      if n > top_count
        top_count = n
        top = k
      end
    end
    top
  end
  
  def standard_deviation(set)
    Math.sqrt(mean(set.map{ |n| (n - mean(set)) ** 2 }))
  end