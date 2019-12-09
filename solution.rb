
    #####          Q1      ########
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
      upper_case_full_names = students.map do |name| 
       " #{name[:first_name].upcase} #{name[:last_name].upcase}" 
       end
       p upper_case_full_names


       
    
    #####          Q2      ########
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
      
      first_order_for_each_user = users.map do |order| 
       " #{order[:orders][0]} " 
       end
       p first_order_for_each_user
   
       
    
    #####          Q3      ########
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
      avrage = 0
      sum = 0
    people.each do |name|
      names =  name[:name]
    end
    people.each do |trans|
    transa = trans[:transactions]  
     transa.each do |avg|
         if avg[:type] == "COFFEE"
          sum =  avg[:amount] + avrage
         end   
    end 
    end
    #   coffee_average_per_person = []
    #         case people[:transactions]
    #         when type = "COFFEE"
    #             puts 
    #     end


    
    #####          Q4      ########
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

     
      stores.each do |prod|
      product = prod[:products]  
       product.each do |highest_price|
        price = highest_price[:price]
           if price >= highest_price[:price]
            new_ex.push(highest_price[:price])
           end   
      end 
      end


    # Q_4
       
   