# create a default administrator
puts "criando administrador padrão..."
Administrator.create!(name: "Administrator", email: "admin@email.com", password: "administrator", password_confirmation: "administrator")

puts "criando grupos de transtornos..."
DisorderGroup.create(name: "Transtornos de Neurodesenvolvimento", description: "")
DisorderGroup.create(name: "Espectro da Esquizofrenia e Outros Transtornos Psicóticos", description: "")
DisorderGroup.create(name: "Transtorno Bipolar e Seus Correlatos", description: "")
DisorderGroup.create(name: "Transtornos Depressivos", description: "")
DisorderGroup.create(name: "Transtornos de Ansiedade", description: "")
DisorderGroup.create(name: "Transtorno Obsessivo-Compulsivo e Seus Correlatos", description: "")
DisorderGroup.create(name: "Transtorno Traumático e de Estresse e Seus Correlatos", description: "")
DisorderGroup.create(name: "Transtornos Dissociativos", description: "")
DisorderGroup.create(name: "Transtornos Somáticos-Sintomáticos", description: "")
DisorderGroup.create(name: "Alimentação e Transtornos Alimentares", description: "")
DisorderGroup.create(name: "Transtornos de Eliminação", description: "")
DisorderGroup.create(name: "Transtornos do Sono e do Despertar (Sono-Vigília)", description: "")
DisorderGroup.create(name: "Disfunções Sexuais", description: "")
DisorderGroup.create(name: "Disforia de Gênero", description: "")
DisorderGroup.create(name: "Transtornos de Conduta, de Controle do Impulso e da Disrupção", description: "")
DisorderGroup.create(name: "Transtornos de Adição e de Uso de Substâncias", description: "")
DisorderGroup.create(name: "Transtornos Neurocognitivos", description: "")
DisorderGroup.create(name: "Transtornos da Personalidade18. Transtornos da Personalidade", description: "")
DisorderGroup.create(name: "Transtornos de Parafilias (Parafílicos)", description: "")
DisorderGroup.create(name: "Outros Transtornos Mentais", description: "")

puts "pronto!"