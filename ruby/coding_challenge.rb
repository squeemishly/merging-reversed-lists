require 'pry'

class Merger
  def mergify(arr1, arr2)
    arr1.zip(arr2).flatten
  end
end
