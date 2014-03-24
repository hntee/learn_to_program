def sort arr
  recursive_sort(arr, [])
end

def get_min_idx arr
  if arr.empty?
    return
  end
  min_idx = 0
  min = arr[0]
  arr.each_index do |cur_idx|
    if min > arr[cur_idx]
      min = arr[cur_idx]
      min_idx = cur_idx
    end
  end
  min_idx
end

def recursive_sort (unsorted_arr,sorted_arr)
  # get the minimum in the unsorted_arr
  if unsorted_arr.empty?
    return sorted_arr
  else
    min_idx = get_min_idx(unsorted_arr)
    sorted_arr << unsorted_arr[min_idx]

    unsorted_arr.delete_at(min_idx)
    recursive_sort(unsorted_arr,sorted_arr)
  end
end

def shuffle_arr (unshuffled_arr)
  recursive_shuffle(unshuffled_arr, [])
end


def recursive_shuffle (unshuffled_arr, new_arr)
  len = unshuffled_arr.length
  rand_idx = rand(len)
  if unshuffled_arr.empty?
    return new_arr
  else
    new_arr << unshuffled_arr[rand_idx]
    unshuffled_arr.delete_at(rand_idx)
    recursive_shuffle(unshuffled_arr, new_arr)
  end
end
require 'pry'

def dict_sort arr
  dict_recursive_sort(arr, [])
end

def dict_get_min_idx arr
  if arr.empty?
    return
  end
  min_idx = 0
  min = arr[0].downcase
  arr.each_index do |cur_idx|
    if min > arr[cur_idx].downcase
      min = arr[cur_idx].downcase
      min_idx = cur_idx
    end

  end
  min_idx
end

def dict_recursive_sort (unsorted_arr,sorted_arr)
  # get the minimum in the unsorted_arr
  if unsorted_arr.empty?
    return sorted_arr
  else
    min_idx = dict_get_min_idx(unsorted_arr)
    sorted_arr << unsorted_arr[min_idx]

    unsorted_arr.delete_at(min_idx)
    dict_recursive_sort(unsorted_arr,sorted_arr)
  end
end

