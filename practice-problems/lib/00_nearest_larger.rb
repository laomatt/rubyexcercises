def nearest_larger(arr, idx)
(1..arr.length).map { |e| arr[(idx-e)%arr.length] > arr[idx]? "#{(idx-e)%arr.length}" : arr[(idx+e)%arr.length] > arr[idx]? "#{(idx+e)%arr.length}" : "b"}.delete_if{|r| r=="b"}.map { |e| e.to_i  }[0]
end

#first we create and array of indicies, if the element of that index is larger than the idx element, or b if its not.
#then we remove all 'b' in the index
#then we convert each element in the array to an integer and then take the first element