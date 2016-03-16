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

puts "criando transtornos..."
Disorder.create(name: "exemplo 1...", description: "", disorder_group_id: 1)
Disorder.create(name: "exemplo 2...", description: "", disorder_group_id: 1)
Disorder.create(name: "exemplo 3...", description: "", disorder_group_id: 1)
Disorder.create(name: "exemplo 4...", description: "", disorder_group_id: 1)
Disorder.create(name: "exemplo 5...", description: "", disorder_group_id: 3)
Disorder.create(name: "exemplo 6...", description: "", disorder_group_id: 3)
Disorder.create(name: "exemplo 7...", description: "", disorder_group_id: 3)
Disorder.create(name: "exemplo 8...", description: "", disorder_group_id: 3)
Disorder.create(name: "exemplo 9...", description: "", disorder_group_id: 7)
Disorder.create(name: "exemplo 10...", description: "", disorder_group_id: 7)
Disorder.create(name: "exemplo 11...", description: "", disorder_group_id: 7)
Disorder.create(name: "exemplo 12...", description: "", disorder_group_id: 7)

puts "criando vídeos..."
Video.create(title: "Título do vídeo 1", description: "", link: '<iframe width="560" height="315" src="https://www.youtube.com/embed/J-nhV8KCUmU" frameborder="0" allowfullscreen></iframe>')
Video.create(title: "Título do vídeo 2", description: "", link: '<iframe width="560" height="315" src="https://www.youtube.com/embed/Hc-kqzQBfQY" frameborder="0" allowfullscreen></iframe>')
Video.create(title: "Título do vídeo 3", description: "", link: '<iframe width="420" height="315" src="https://www.youtube.com/embed/YQSkej4mFpE" frameborder="0" allowfullscreen></iframe>')
Video.create(title: "Título do vídeo 4", description: "", link: '<iframe width="420" height="315" src="https://www.youtube.com/embed/03pyYiUChZs" frameborder="0" allowfullscreen></iframe>')
Video.create(title: "Título do vídeo 5", description: "", link: '<iframe width="420" height="315" src="https://www.youtube.com/embed/0uZL539clbQ" frameborder="0" allowfullscreen></iframe>')

puts "pronto!"