################## Q1

students = [
    {
        first_name: 'John',
        last_name: 'Doe'
    },
    {
        first_name: 'Jane',
        last_name: 'Doe',
    },
    {
        first_name: 'Jennifer',
        last_name: 'Aniston',
    }
  ]
  
  upper_case_full_names = []

#### solving with sami

# students.each do |i|

# end 


upper_case_full_names = students.map {|i| i[:first_name].upcase + " " + i[:last_name].upcase}

#p upper_case_full_names


###################### Q2
users = [
  {
      name: 'Ahmed',
      orders: [
          {
              description: 'a bike'
          }
      ]
  },
  {
      name: 'Sami',
      orders: [
          {
              description: 'bees'
          },
          {
              description: 'fishing rod'
          }
      ]
  },
  {
      name: 'Salman',
      orders: [
          {
              description: 'a MacBook'
          },
          {
              description: 'The West Wing DVDs'
          },
          {
              description: 'headphones'
          },
          {
              description: 'a kitten'
          }
      ]
  }
]

first_order_for_each_user = []

first_order_for_each_user = users.map {|i| i[:orders][0]}

#p first_order_for_each_user

### solving with sami

users.each do |element| # check this one
    first_order_for_each_user.push([:orders][0])
end


##################### Q3

people = [
    {
        name: 'Maha',
        transactions: [
            {
                type: 'COFFEE',
                amount: 7.43
            },
            {
                type: 'TACOS',
                amount: 14.65
            },
            {
                type: 'COFFEE',
                amount: 4.43
            }
        ]
    },
    
    {
        name: 'Salman',
        transactions: [
            {
                type: 'BIKES',
                amount: 800.00
            },
            {
                type: 'TACOS',
                amount: 14.65
            },
            {
                type: 'COFFEE',
                amount: 4.43
            }
        ]
    },
    {
        name: 'Sami',
        transactions: [
            {
                type: 'COFFEE',
                amount: 7.43
            },
            {
                type: 'COFFEE',
                amount: 100.00
            },
            {
                type: 'COFFEE',
                amount: 4.43
            }
        ]
    }
  ]
  
  
  coffee_average_per_person = []
  
## solving with sami



people.each do |hash|
    person = { # created an empty hash to push it in the array
        name:"",
        coffee_avrg:0
    }

    sum = 0
    count = 0

    person[:name] = hash[:name] # to fill the empty hash
    
    hash[:transactions].each do |element| # looping through the transaction of each person
        if element[:type] == "COFFEE"
            sum += element[:amount]
            count += 11
        end
    end # end of loop

    person[:coffee_avrg] = sum / count # filling the avrg

    coffee_average_per_person.push(person) # pushing it inot the array cuz this is what was requested

end 

#p coffee_average_per_person











#### end solving with sami

trans = people.map {|i| i[:transactions]} # this is an array of transactions arrays only
#puts trans

#p trans[0][0][:amount]
#x = trans.length
#p x
#p trans[i][i][:type]


#x.times {|i| trans[i].each do |key,value|}

# tmp = trans.map {|i| i[:type]}
# p tmp

# coffee = trans.map {|i| i[:type]}
# p coffee


 #tmp = people.map {|i| i[:transactions][i][:type] == "COFFEE"}
#  tmp = people.map {|i| i[:transactions][i][:type] == "COFFEE"}
#  p tmp
#p "items" if tmp[0][:type] = "COFFEE"
# p people[i][:transactions][i][:type]
# p tmp

# x = people.length
# x.times {|i|
#      people[i].each do |key,value| # looping the array of hashes
#       #puts key
#        if people[i][key] == "Maha"
#         puts key[:name]
#        end
#      end
#     }




######### solving Q4

#    0              0   1        1             0   1        2             0   1
# = [ { name, prod[ {}, {} ] } , { name, prod[ {}, {} ] } , { name, prod[ {}, {} ] }]
stores = [
    {
        store_name: 'Jarir',
        products: [
            {
                description: 'Titanium',
                price: 9384.33
            },
            {
                description: 'Gold',
                price: 345.54
            }
        ]
    },
    {
        store_name: 'Danub',
        products: [
            {
                description: 'Silver',
                price: 654.44
            },
            {
                description: 'Ruby',
                price: 323.43
            }
        ]
    },
    {
        store_name: 'Souq',
        products: [
            {
                description: 'Opal',
                price: 345.43
            },
            {
                description: 'Sapphire',
                price: 899.33
            }
        ]
    }
  ]
  
  most_expensive_products_by_store = []

  
## loop the array
stores.each do |element|

    tmp = { # temporary hash
        store_name: "",
        most_expensive_product: {
            description: "",
            price: 0
        }
    }

  tmp[:store_name] = element[:store_name]
    
#   max = 0
  element[:products].each do |i| ## looping the array product
    #  puts "before if"  
     
        if i[:price] > tmp[:most_expensive_product][:price]
            tmp[:most_expensive_product][:description] = i[:description]
            tmp[:most_expensive_product][:price] = i[:price]
            # puts max   
        end
        # puts "after if"
       #puts i[:price]
    end
# max = 0
  #puts tmp
  most_expensive_products_by_store.push(tmp)
end # end looping stores array


puts most_expensive_products_by_store


