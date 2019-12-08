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
  
   
  arr = students.map do |i|
             i[:first_name].upcase + " " + i[:last_name].upcase
         end
       # p arr
       


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
      arr = users.map do |i|
        i[:orders][0]
          
      end
      #p arr
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
      
      coffee_average = people.map do |i|
      sum = []
        i[:transactions].map do |transaction|
            if transaction[:type] == 'COFFEE'
                sum.push(transaction[:amount])
            end
        end
        
        { 
        name: i[:name] , 
        coffee_average: sum.reduce(:+) / sum.length 
        }
    end
    
    # puts coffee_average


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
        expensive = store[:products].max_by do |product|
            product[:price]
        end  
    
        {
           name: store[:store_name] ,
           price: expensive[:price]
        }
    end 
    
    puts most_expensive_products_by_store


        

   