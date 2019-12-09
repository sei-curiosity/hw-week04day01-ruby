# Ruby HW

![ARRAYS](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVWBMdo6Ac3moY3tPnzMsFVnOscOR03SxkZ4sPGGhsWoQrYMPZ9g)

## 1. Return an array of each Student's full name, upper-cased

```rb

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

```

 new_arr = students.map do |element|
            element[:first_name] + " " + element[:last_name]
        end
        p new_arr

```rb

[ 'JOHN DOE', 'JANE DOE', 'JENNIFER ANISTON' ]

```

## 2. Find the first order for each user

```rb

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

```

 first_order_for_each_user = users.map do |order|
        "#{order[:orders].first}"
      end
      puts first_order_for_each_user

```rb

[ {description: "a bike"}, {description: "bees"}, {description: "a MacBook"} ]
```

## 3. Find the average amount spent on coffee, per transaction, for each person

```rb

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

```

people.each do |hash|  ##first loop for hash 
        new_person = {name:"",coffee_average:0}
        new_person[:name] = hash[:name]
        puts hash[:name]
        counter = 0
        total_amout = 0
        hash[:transactions].each do |key,value|  ##second loop for transcations [{},{},{}]
            if key[:type] == "COFFEE"
                total_amout += key[:amount]
                counter += 1
            end
        end
        new_person[:coffee_average] = total_amout / counter
        coffee_average_per_person.push(new_person)
      end
    
      p coffee_average_per_person

```rb

[ 
  {name: "Maha", :coffee_average=>5.93}, 
  {name: "Salman", :coffee_average=>4.43}, 
  {name: "Sami", :coffee_average=>37.28666666666667} 
]

```

## 4. Find the most expensive product for each store, with the store name:

```rb

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

```

 most_expensive_products_by_store = []
    
    stores.each do |hash|
        new_store_with_expensive_product = {store_name:"",most_expensive_product:{}}
        expensive_product = {description:"",price:0}
    
        new_store_with_expensive_product[:store_name] = hash[:store_name]
        hash[:products].each do |hash_products|
            if hash_products[:price] > expensive_product[:price]
                expensive_product[:price] = hash_products[:price]
                expensive_product[:description] = hash_products[:description]
            end
        end
        new_store_with_expensive_product[:most_expensive_product] = expensive_product
        most_expensive_products_by_store.push(new_store_with_expensive_product) 
    end
    
    puts most_expensive_products_by_store

```rb

[ 
  {store_name: "Jarir", most_expensive_product: { description: "Titanium", price: 9384.33}},
  {store_name: "Danub", most_expensive_product: { description: "Silver", price: 654.44}},
  {store_name: "Souq", most_expensive_product: { description: "Sapphire", price: 899.33}}
]
```

# Bonus

Write an infinite loop that will make you add all the your friends in the students list and after each add will ask if you want to quit the loop (yes/no) if the user choose no print all the students array

### Answer

```

>add a student
Bill Cosby
>Do you want to continue ? (y/n)
y
>add a student
Stefan King
>Do you want to continue ? (y/n)
y
>add a student

```
