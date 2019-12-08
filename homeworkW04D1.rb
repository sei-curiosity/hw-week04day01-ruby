## Q:1. Return an array of each Student's full name, upper-cased
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
puts students 
# .map to store them in a new array
# create a new array to loacte the upper letter of the names
#USE UPCASE or Capitalize
new_arr = []
new_arr = students.map do |element|
    element [:first_name].upcase + " " + element [:last_name].upcase

end
p new_arr

#---------------------------------

#   students.each do |element|
#     upper_case_full_names.push(element.first_name.upcase + " " + element.last_name.upcase)
#   end
#   puts(students)
#   p upper_case_full_names
  
  ###-----------Q2 ORDER----2. Find the first order for each user
  

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

    
##------ANSQ2---
    first_order_for_each_user = users.map do |order|
        " #{order [:orders].first} "
    end
        puts first_order_for_each_user


        ##----Q3-Find the average amount spent on coffee, per transaction, for each person--
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

          ##Loop
          people.each do | i | 
            new_person = {name:"",coffee_average:0}    ##--- temp for the new person
            new_person[:name] = i[:name]
            puts i[:name]
            cnt = 0
            total =0
            i[:transactions].each do |key,value|
                if key[:type] == "COFFEE"
                    total += key[:amount]
                    cnt++
                 end
            end 
    {

    new_person[:coffee_average] = total / cnt 
    coffee_average_per_person.push(new_person)
    }
        end 
        p coffee_average_per_person
        
        ##---Q4---
        ## 4. Find the most expensive product for each store, with the store name:
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

most_expensive_products_by_store = stores.map do |store|
    expensive =store [:products].max_by do |p|
        p[:price]
    end
    
        {name: [:store_name] , 
        price :expensive[:price]}
    
end
puts most_expensive_products_by_store