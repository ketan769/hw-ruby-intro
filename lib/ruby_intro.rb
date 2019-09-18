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
    if s[l].match(/[^\d]/)#if charachter not a digit then return false 
      return false
    end
    num+=s[l].to_i*(2**k)#if it is a digit then multiply it with power of 2 which is incremented at every iteration
    l-=1
    k+=1
  end
  if num%4==0 #check if the number has remainder zero divided by four then return true else false 
      return  true
  else
      return false
  end
end
# # Part 3

class BookInStock

  attr_accessor :isbn,:price#use attribute accessors to generate code on runtime to add and read book "isbn" and "price"

  def initialize (isbn,price)
    isbn=isbn.strip  
    raise ArgumentError,"ISBN cannot be empty" if isbn.length==0#raise error length empty "isbn"
    raise ArgumentError,"Cannot enter string in price" if price.is_a?(String)#error if price is a string rather than float
    raise ArgumentError,"Cannot enter string in price" if price<=0 #error if price entered is less than zero
    @isbn=isbn.to_s
    @price=price.to_f
  end

  def price_as_string
    if self.price.to_s.match(/.\d\d$/)
      val="$"+self.price.to_s #if price ending with two zeros then return string with '$' at the start
      return val   
    else
      val="$"+@price.to_s+"0" #if price ending with one zero then return string with '$' at the start and zero at the end 
      return val
    end
  end   
end
