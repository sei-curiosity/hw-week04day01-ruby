# 1. Return an array of each Student's full name, upper-cased

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

upper_case_full_names = students.map do |x|

    x[:first_name].upcase+ " " + x[:last_name].upcase

end

p upper_case_full_names

#########################################


# 2. Find the first order for each user


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

first_order_for_each_user = users.map do |i|
        i[:orders][0]
      end

p first_order_for_each_user

# 3. Find the average amount spent on coffee, per transaction, for each person


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

coffee_ave = []

coffee_average_per_person = people.map do |person|
    
        coffee_sum = []
        person[:transactions].map do |transaction|
            if transaction[:type] == 'COFFEE'
                coffee_sum.push(transaction[:amount])
            end
        end
        
        { 
        name: person[:name] , 
        coffee_average: coffee_sum.reduce(:+) / coffee_sum.length 
        }
    end
    
    puts coffee_average_per_person