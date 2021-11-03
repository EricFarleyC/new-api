if Rails.env.test?
  puts '===== TEST SEED'

  User.create(name: 'Eric', age: 27)

end