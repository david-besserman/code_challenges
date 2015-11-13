class Series
  def initialize(digits_str)
    @digits = (digits_str)
  end

  def slices(slice_size)
    raise ArgumentError if slice_size > @digits.length

    digits_array = @digits.split(//).map!{|digit| digit.to_i}
    slices = []
    i = 0

    while i <= last_index(slice_size)
      slice = []
      j = i

      while slice.size < slice_size
        slice.push(digits_array[j])
        j += 1
      end

      slices.push(slice)
      i += 1
    end

    slices
  end

  def last_index(slice_size)
    @digits.size - slice_size
  end
end
