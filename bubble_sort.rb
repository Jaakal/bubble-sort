# frozen_string_literal: true

def bubble_sort(array)
  last_index = array.length

  while last_index > 1
    (1...last_index).each do |i|
      next unless array[i - 1] > array[i]

      temp_value = array[i - 1]
      array[i - 1] = array[i]
      array[i] = temp_value
    end
    last_index -= 1
  end

  array
end

def bubble_sort_by(array)
  return array unless block_given?

  last_index = array.length

  while last_index > 1
    (1...last_index).each do |i|
      next unless yield(array[i - 1..i]).positive?

      temp_value = array[i - 1]
      array[i - 1] = array[i]
      array[i] = temp_value
    end
    last_index -= 1
  end

  array
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
