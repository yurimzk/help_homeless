# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying users..."
User.destroy_all

puts "Creating users..."
User.create!(email: "leo@lewagon.com", password: 123456, first_name: "Leonardo", last_name: "Alves", address: "Rua Almirante Cochrane 240", profile_img: "https://ca.slack-edge.com/T02NE0241-U05426RHZDW-e6cf35666906-512")
User.create!(email: "yuri@lewagon.com", password: 123456, first_name: "Yuri", last_name: "Tagomori", address: "Rua Coronel Paulo Malta Resende 180", profile_img: "https://ca.slack-edge.com/T02NE0241-U052K6YAR8S-99d65fe3873e-512")
User.create!(email: "ph@lewagon.com", password: 123456, first_name: "Pedro Henrique", last_name: "Souza", address: "Rua Tobias Moscoso 43", profile_img: "https://ca.slack-edge.com/T02NE0241-U053DAFSZSL-c2ffe71d509e-512")
User.create!(email: "pedro@lewagon.com", password: 123456, first_name: "Pedro", last_name: "Zoffoli", address: "Rua Pontes Correia 146", profile_img: "https://ca.slack-edge.com/T02NE0241-U053DNHBUDQ-4e6311a803bf-512")

puts "Destroying events..."
Event.destroy_all

puts "Creating events..."
Event.create!(title: "Sopão solidário", description: "Almoço de domingo.", event_date: Date.yesterday, user_id: 1, event_img: "https://s2.glbimg.com/bcfMd3GNv5mEQBc8v3BiFuYTzdI=/620x455/e.glbimg.com/og/ed/f/original/2018/07/05/turma-da-sopa.jpg")
Event.create!(title: "Doação de quentinhas", description: "Quem tem fome tem pressa.", event_date: Date.today, user_id: 1, event_img: "https://s2.glbimg.com/WVBhkTGl8y22K8yznVWkZ3v5sPo=/0x0:960x640/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2017/T/o/D1A60aRa2PtpYghqoI4g/whatsapp-image-2017-07-06-at-11.39.09.jpeg")
Event.create!(title: "Arrecadar cobertores", description: "Agasalhos para o frio.", event_date: Date.tomorrow, user_id: 2, event_img: "https://agenciabrasil.ebc.com.br/sites/default/files/atoms/image/1021390-street%20store_dsc6843.jpg")
Event.create!(title: "Mutirão de vacinas", description: "Atualizando cartão de vacinação.", event_date: Date.yesterday, user_id: 2, event_img: "https://i.em.com.br/_aGlmu5N5ysx1Tbw7cZBpcWSkuM=/1200x900/smart/imgsapp.em.com.br/app/noticia_127983242361/2020/05/19/1148709/20200519141621517654u.jpg")
Event.create!(title: "Ajuda com roupas", description: "Recolhendo roupas para o inverno.", event_date: Date.today, user_id: 3, event_img: "https://www.diariodepernambuco.com.br/static/app/noticia_127983242361/2018/08/19/760465/20180819165858424536u.JPG")
Event.create!(title: "Médicos voluntários", description: "Cuidados básicos.", event_date: Date.tomorrow, user_id: 3, event_img: "https://agenciabrasilia.df.gov.br/wp-conteudo/uploads/2021/07/WhatsApp-Image-2021-07-29-at-16.17.51.jpeg")
Event.create!(title: "Jantar beneficente", description: "Quentinhas para todos.", event_date: Date.yesterday, user_id: 4, event_img: "https://soubh.uai.com.br/uploads/post/image/8021/main_211612_nosso_natal.jpg")
Event.create!(title: "Resgate social", description: "Ajudando quem precisa.", event_date: Date.today, user_id: 4, event_img: "https://media.imperatriz.ma.gov.br/PDKldma2eZgiBSQ1t8_L49PGhwU=/750x0/novo.imperatriz.ma.gov.br/media/site/content/article/1111111111111111.jpeg")

puts "Destroying posts..."
Post.destroy_all

puts "Creating posts..."
Post.create!(content: "Estarei presente.", event_id: 1, user_id: 1)
Post.create!(content: "Vamos ajudar!", event_id: 1, user_id: 2)
Post.create!(content: "Adorei a ideia.", event_id: 2, user_id: 3)
Post.create!(content: "Posso levar mais quentinhas?", event_id: 2, user_id: 4)
Post.create!(content: "Vou levar os que tenho sobrando.", event_id: 3, user_id: 1)
Post.create!(content: "Tenho alguns para doar.", event_id: 3, user_id: 2)
Post.create!(content: "Vacinar é muito importante.", event_id: 4, user_id: 3)
Post.create!(content: "Ótima iniciativa.", event_id: 4, user_id: 4)
Post.create!(content: "Vamos doar pessoal!", event_id: 5, user_id: 1)
Post.create!(content: "Vou comprar alguns casacos.", event_id: 5, user_id: 2)
Post.create!(content: "Saúde é sempre bom.", event_id: 6, user_id: 3)
Post.create!(content: "Excelente ideia!", event_id: 6, user_id: 4)
Post.create!(content: "Posso levar arroz?", event_id: 7, user_id: 1)
Post.create!(content: "Estarei presente.", event_id: 7, user_id: 2)
Post.create!(content: "Posso ajudar no que for preciso.", event_id: 8, user_id: 3)
Post.create!(content: "Adorei a ideia.", event_id: 8, user_id: 4)
