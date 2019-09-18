# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  ans=0
  arr.each do |i|
      ans+=i#take each number one by one and add it to the answer variable 
  end
  ans#last command call is returned as the output  
end    

def max_2_sum arr
  if arr.length==0
    return 0#returns zero if array empty
  end
  if arr.length==1
    return arr[0]#returns the element if array has only one element
  end
  l=0
  score=-2**31#intialize a large negative score 
  #Run a double loop to find pairs and check their sum 
  for i in arr
    l+=1
    w=arr.length-1
    for j in arr[l,w]
        temp=i+j
        if temp>score
            score=temp
        end
    end
  end
  score#last command call is returned as the output  
end


def sum_to_n? arr, n
  if arr.length<=1
    return false
  end
  if arr.length==1
    if arr[0]==n
      return true 
    else
      return false
    end
  end
#Run a double loop to find pairs and check their sum 
  l=0
  for i in arr
    l+=1
    w=arr.length-1
    for j in arr[l,w]
        
        temp=i+j
        if temp==n#sum of any two equals to target n then returns true 
            return true
        end
    end
  end
  return false#if not able to return true then returns false
end

# # Part 2
def hello(name)
  "Hello,"+" "+name.to_s#using add "+" we can concatinate the string and since this is the last argument it will be returned as output
end


def starts_with_consonant? s
  s.strip#removes white spaces
  if s.length==0
    return false#if string empyt then return false
  end 
  
  if s.match(/^[bcdfghjklmnpqrstvwxyz]/i)#checking with all consonants 
      return true
  else
      return false
  end
end



def binary_multiple_of_4? s
  s=s.delete(' ')
  if s.length==0
    return false
  end 
  l=s.length-1
  num=0
  k=0
  while l>=0 do
    # puts s[l]
    if s[l].match(/[^\d]/)
      return false
    end
    num+=s[l].to_i*(2**k)
    l-=1
    k+=1
  end
  if num%4==0 
      return  true
  else
      return false
  end
end
# # Part 3

class BookInStock

  attr_accessor :isbn,:price

  def initialize (isbn,price)
    isbn=isbn.strip  
    raise ArgumentError,"ISBN cannot be empty" if isbn.length==0
    raise ArgumentError,"ISBN cannot be empty" if isbn.length==0
    raise ArgumentError,"Cannot enter string in price" if price.is_a?(String)
    raise ArgumentError,"Cannot enter string in price" if price<=0 
    @isbn=isbn.to_s
    @price=price.to_f
  end

  def price_as_string
    if self.price.to_s.match(/.\d\d$/)
      val="$"+self.price.to_s
      return val   
    else
      val="$"+@price.to_s+"0"
      return val
    end
  end   
end
