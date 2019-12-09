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
  
 #tmp = people.map {|i| i[:transactions][i][:type] == "COFFEE"}
#p "items" if tmp[0][:type] = "COFFEE"
# p people[i][:transactions][i][:type]
#p tmp

# x = people.length
# x.times {|i|
#      people[i].each do |key,value| # looping the array of hashes
#       # puts key
#        if key == "transactions"
#         puts key[:transactions]
#        end
#      end
#     }