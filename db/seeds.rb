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
User.create!(email: "leo@lewagon.com", password: 123456, first_name: "Leonardo", last_name: "Alves", address: "Rua Almirante Cochrane 240", profile_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254683/T02NE0241-U05426RHZDW-e6cf35666906-512_pwvhbs.jpg")
User.create!(email: "yuri@lewagon.com", password: 123456, first_name: "Yuri", last_name: "Tagomori", address: "Rua Coronel Paulo Malta Resende 180", profile_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254675/T02NE0241-U052K6YAR8S-99d65fe3873e-512_tjdm31.jpg")
User.create!(email: "ph@lewagon.com", password: 123456, first_name: "Pedro Henrique", last_name: "Souza", address: "Rua Tobias Moscoso 43", profile_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254669/T02NE0241-U053DAFSZSL-c2ffe71d509e-512_mybcka.jpg")
User.create!(email: "pedro@lewagon.com", password: 123456, first_name: "Pedro", last_name: "Zoffoli", address: "Rua Pontes Correia 146", profile_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254662/T02NE0241-U053DNHBUDQ-4e6311a803bf-512_w8jwlq.jpg")

puts "Destroying events..."
Event.destroy_all

puts "Creating events..."
Event.create!(title: "Sopão solidário", description: "Almoço de domingo.", event_date: Date.yesterday, user_id: 1, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254350/turma-da-sopa_bfysb3.jpg", address: "Paris")
Event.create!(title: "Doação de quentinhas", description: "Quem tem fome tem pressa.", event_date: Date.today, user_id: 1, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254361/whatsapp-image-2017-07-06-at-11.39.09_mgicsj.jpg", address: "Alemanha")
Event.create!(title: "Arrecadar cobertores", description: "Agasalhos para o frio.", event_date: Date.tomorrow, user_id: 2, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254374/1021390-street_20store_dsc6843_ogjizt.jpg", address: "Argentina")
Event.create!(title: "Mutirão de vacinas", description: "Atualizando cartão de vacinação.", event_date: Date.yesterday, user_id: 2, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254394/20200519141621517654u_rhcvwe.jpg", address: "Peru")
Event.create!(title: "Ajuda com roupas", description: "Recolhendo roupas para o inverno.", event_date: Date.today, user_id: 3, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254397/20180819165858424536u_hsfgpx.jpg", address: "Filipinas")
Event.create!(title: "Médicos voluntários", description: "Cuidados básicos.", event_date: Date.tomorrow, user_id: 3, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254427/main_211612_nosso_natal_rlkzgt.jpg", address: "Japão")
Event.create!(title: "Jantar beneficente", description: "Quentinhas para todos.", event_date: Date.yesterday, user_id: 4, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254428/1111111111111111_enrnjs.jpg", address: "Índia")
Event.create!(title: "Resgate social", description: "Ajudando quem precisa.", event_date: Date.today, user_id: 4, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254636/WhatsApp-Image-2021-07-29-at-16.17.51_i7f8u8.jpg", address: "Estados Unidos")

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
