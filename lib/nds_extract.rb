$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to the :worldwide_grosses and return that Integer
# using director_data as input
#it correctly totals the worldwide earnings for a director
def gross_for_director(director_data)
  #binding.pry
  integer=0
  i = 0
  while i < director_data[:movies].length do
  integer += director_data[:movies][i][:worldwide_gross]
  i += 1
  end
 integer
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_i = 0
  while director_i < nds.length do
    #binding.pry
    result[nds[director_i][:name]] = gross_for_director(directors_database[director_i])
    director_i += 1
  end
 result
end
