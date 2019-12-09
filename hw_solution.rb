
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


students.each do |a|   # this is an array of arrays of hashes
        # this is an array of hashes
    #    puts a.fisrt_name
  #      upper_case_full_names.push(a[:first_name].upcase + a[last_name].upcase)
    end
  puts upper_case_full_names

# p students[0][0][:fisrt_name]
# for s in students do 
# puts s[0][:fisrt_name]
# end
    #____________________
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
  
      users.each do |a|   # this is an array of arrays of hashes
        first_order_for_each_user.push( a[:orders].first)

      end
  puts first_order_for_each_user
   
#-----------------
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
ava_trans =[]
people.each do |a|  
    sum =0  # this is an array of arrays of hashes
    puts a[:name]
   a[:transactions].each do |t|
    
    puts sum  += t[:amount]
   end
   puts "sum #{sum/3}"
  end
  puts ava_trans

  people.each do |a|   # this is an array of arrays of hashes
    coffee_average_per_person.push( a[:name], ava_trans)

  end
puts coffee_average_per_person