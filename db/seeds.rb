# create a default administrator
puts "criando administrador padrão..."
Administrator.create!(name: "Administrator", email: "admin@email.com", password: "administrator", password_confirmation: "administrator")

puts "pronto!"