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

### Answer

```rb

 i=0
  while i<students.length
    upper_case_full_names.push("#{students[i][:first_name].upcase} #{students[i][:last_name].upcase}")
    i=i+1
  end
  p upper_case_full_names

```

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

### Answer

```rb

  i=0
  while i<users.length
    first_order_for_each_user.push(users[i][:orders][0])
    i=i+1
  end
  p first_order_for_each_user

```
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

### Answer

```rb
 arr1=[]
 arr2=[]
 num=0
 name=""
 i=0;
 j=0
 count=0
 people.each do |item|
        while j<item[:transactions].length
            if item[:transactions][j][:type]=="COFFEE"
                num=num+ item[:transactions][j][:amount]
                name=item[:name]
                count+=1
            end
            j+=1        
        end      
        num = num / count
        arr1.push(name)
        arr2.push(num)
        name=""
        j=0
        count=0
        num=0
 end
while i<arr1.length
    puts "name: #{arr1[i]}, coffee_average: #{arr2[i]}"
    i+=1
end

```

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

### Answer

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

```rb
student_names=[]
continue="Y"
while continue === "Y"
    puts "add a student"
    student_names.push(gets.chomp)
    puts "Do you want to continue ? (y/n)"
    continue=gets.chomp.upcase
end
puts student_names
```
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
