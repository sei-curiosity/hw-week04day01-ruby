
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
      
      
      ## [ 'JOHN DOE', 'JANE DOE', 'JENNIFER ANISTON' ]
    
    # Q_1
    #   ```
    #   ########The solution by using map method#######
    #     new_arr = students.map do |element|
    #         element[:first_name] + " " + element[:last_name]
    #     end
    #     p new_arr
    #   ```
    #   ```
    #   #######The solution by using .each loop#######
    #   new_arr = [] ##create new empty array
    #   students.each do |element|
    #     upper_case_full_names.push(element.first_name.upcase + " " + element.last_name.upcase)
    #   end
    #   p new_arr
    # ```
    
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
      
      first_order_for_each_user = []
    
    
    
    # Q_2
    # ```
    #   #######The solution by using map method#######
    #   first_order_for_each_user = users.map do |order|
    #     "#{order[:orders].first}"
    #   end
    #   puts first_order_for_each_user
    #   ```
    
    #   ```
    #   #The solution by using .each loop
    #   users.each do |element|
    #     first_order_for_each_user.push(element[:orders].first)
    #   end
    #   p first_order_for_each_user
    # ```
    
    
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
      
      
      coffee_average_per_person = []
    
    # Q_3
    # ```
    #   #######The solution by using .each loop#######
    # people.each do |hash|  ##first loop for hash 
    #     new_person = {name:"",coffee_average:0}
    #     new_person[:name] = hash[:name]
    #     puts hash[:name]
    #     counter = 0
    #     total_amout = 0
    #     hash[:transactions].each do |key,value|  ##second loop for transcations [{},{},{}]
    #         if key[:type] == "COFFEE"
    #             total_amout += key[:amount]
    #             counter += 1
    #         end
    #     end
    #     new_person[:coffee_average] = total_amout / counter
    #     coffee_average_per_person.push(new_person)
    #   end
    
    #   p coffee_average_per_person
    #   ```
    
    # ```
    #  #######The solution by using map method#######
    # coffee_average_per_person = people.map do |person|
    
    #     coffee_sum = []
    #     person[:transactions].map do |transaction|
    #         if transaction[:type] == 'COFFEE'
    #             coffee_sum.push(transaction[:amount])
    #         end
    #     end
        
    #     { 
    #     name: person[:name] , 
    #     coffee_average: coffee_sum.reduce(:+) / coffee_sum.length 
    #     }
    # end
    
    # puts coffee_average_per_person
    # ```
    
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
      
      
    # Q_4
       
    # ```
    #######The solution by using .each loop#######
    # most_expensive_products_by_store = []
    
    # stores.each do |hash|
    #     new_store_with_expensive_product = {store_name:"",most_expensive_product:{}}
    #     expensive_product = {description:"",price:0}
    
    #     new_store_with_expensive_product[:store_name] = hash[:store_name]
    #     hash[:products].each do |hash_products|
    #         if hash_products[:price] > expensive_product[:price]
    #             expensive_product[:price] = hash_products[:price]
    #             expensive_product[:description] = hash_products[:description]
    #         end
    #     end
    #     new_store_with_expensive_product[:most_expensive_product] = expensive_product
    #     most_expensive_products_by_store.push(new_store_with_expensive_product) 
    # end
    
    # puts most_expensive_products_by_store
    # ```
    
    # ```
    # #######The solution by using map method#######
    # most_expensive_products_by_store = []
    # most_expensive_products_by_store = stores.map do |store|
    #     expensive = store[:products].max_by do |product|
    #         product[:price]
    #     end  
    
    #     {
    #        name: store[:store_name] ,
    #        price: expensive[:price]
    #     }
    # end 
    
    # puts most_expensive_products_by_store
    # ```
    
    #######