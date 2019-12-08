# 1
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
  
new_students = students.map do |students|
    students[:first_name].upcase + " " + students[:last_name].upcase
      
  end

  p new_students
 

  #2 

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
  
order = users.map do |x|
    "#{x[:orders].first}"
    
end

puts order

#3 

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
  
  coffee_averg = people.map do |people_using|
    sum = []
      people_using[:transactions].map do |transaction|
          if transaction[:type] == 'COFFEE'
              sum.push(transaction[:amount])
          end
      end

      { 
      name: people_using[:name], 
      coffee_averg: sum.reduce(:+) / sum.length 
      }
  end

puts coffee_averg 

#Q4 

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
    most_expensive_products_by_store = stores.map do |i|
    expensive = i[:products].max_by do |product|
        product[:price]
    end  

    {
       name: i[:store_name] ,
       price: expensive[:price]
    }
end 

puts most_expensive_products_by_store
