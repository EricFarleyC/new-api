if Rails.env.development?
  puts '===== DEVELOPMENT SEED'

  User.create(name: 'Vanessa', age: 25)
  User.create(name: 'Camila', age: 14)

end