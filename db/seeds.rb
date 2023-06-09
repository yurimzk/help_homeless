# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying all users..."
User.destroy_all

puts "Creating new users..."
User.create!(email: "anne@lewagon.com", password: "123456", first_name: "Anne", last_name: "Bortoli", address: "Rua José Bonifácio, 456 - Santa Teresa, Rio de Janeiro, Brasil", profile_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686319892/T02NE0241-U052YLW4TSM-ad36684f5b5f-512_wayoid.jpg")
User.create!(email: "ara@lewagon.com", password: "123456", first_name: "Araceli", last_name: "Gallardo", address: "Avenida das Lagoas 789, Rio de Janeiro, Brasil ", profile_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686319900/T02NE0241-U05376AR3T8-298b08634e57-512_wqhlrf.jpg")
User.create!(email: "augusto@lewagon.com", password: "123456", first_name: "Augusto", last_name: "Lopes", address: "Rua Visconde de Itamarati 321, Rio de Janeiro, Brasil", profile_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686319921/T02NE0241-U052N41NB28-74bc3756b3a2-512_zrkd1j.png")
User.create!(email: "bruno@lewagon.com", password: "123456", first_name: "Bruno", last_name: "Fazz", address: "Avenida Nossa Senhora de Copacabana, 987 - Copacabana, Rio de Janeiro, Brasil", profile_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686319929/T02NE0241-U052L5PAFLJ-023414d20070-512_sqa0ot.jpg")
User.create!(email: "douglas@lewagon.com", password: "123456", first_name: "Douglas", last_name: "Passos", address: "Rua das Palmeiras 654, Rio de Janeiro, Brasil", profile_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686319935/T02NE0241-U053TTHUZDF-91b1ffa5ea9e-512_gj5o6d.jpg")
User.create!(email: "leo@lewagon.com", password: "123456", first_name: "Leonardo", last_name: "Alves", address: "Avenida Almirante Alexandrino 2000, Rio de Janeiro, Brasil", profile_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254683/T02NE0241-U05426RHZDW-e6cf35666906-512_pwvhbs.jpg")
User.create!(email: "marcos@lewagon.com", password: "123456", first_name: "Marcos Gabriel", last_name: "Costa", address: "Rua do Lavradio, 543 - Lapa, Rio de Janeiro, Brasil", profile_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686319944/T02NE0241-U053V1TGS1X-4b8b3ad2aeb9-512_akcu73.jpg")
User.create!(email: "nemanja@lewagon.com", password: "123456", first_name: "Nemanja", last_name: "Trajkovic", address: "Avenida Infante Dom Henrique, 123 - Flamengo, Rio de Janeiro, Brasil", profile_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686319948/T02NE0241-U052Z7UJY6T-57621bac2b7f-512_d02e4c.jpg")
User.create!(email: "ph@lewagon.com", password: "123456", first_name: "Pedro Henrique", last_name: "Souza", address: "Rua Tobias Moscoso 80, Rio de Janeiro, Brasil", profile_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254669/T02NE0241-U053DAFSZSL-c2ffe71d509e-512_mybcka.jpg")
User.create!(email: "pedro@lewagon.com", password: "123456", first_name: "Pedro", last_name: "Zoffoli", address: "Avenida Delfim Moreira, 789 - Leblon, Rio de Janeiro, Brasil", profile_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254662/T02NE0241-U053DNHBUDQ-4e6311a803bf-512_w8jwlq.jpg")
User.create!(email: "yuri@lewagon.com", password: "123456", first_name: "Yuri", last_name: "Tagomori", address: "Rua Dias Ferreira, 456 - Leblon, Rio de Janeiro, Brasil", profile_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254675/T02NE0241-U052K6YAR8S-99d65fe3873e-512_tjdm31.jpg")

puts "Destroying all events..."
Event.destroy_all

puts "Creating new events..."
Event.create!(title: "Soup kitchen", description: "At our Soup kitchen, we believe that a warm meal not only satisfies hunger but also offers comfort and hope. This event is more than just a meal; it's an opportunity to restore dignity, inspire change, and build bridges of empathy.", event_date: Date.tomorrow+rand(1..20), user_id: 1, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254350/turma-da-sopa_bfysb3.jpg", address: "Rua Barão de Mesquita, 123 - Tijuca")
Event.create!(title: "Food donation", description: "We encourage you to show your support by donating non-perishable food items, such as canned goods, rice, pasta, grains, and other essential food supplies. Your generous contributions will help us create care packages and distribute them directly to local homeless shelters and organizations serving those without stable housing.", event_date: Date.tomorrow+rand(1..20), user_id: 2, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254361/whatsapp-image-2017-07-06-at-11.39.09_mgicsj.jpg", address: "Avenida Atlântica, 1000 - Copacabana")
Event.create!(title: "Gathering blankets", description: "This event is a wonderful opportunity for individuals, families, and community groups to come together and demonstrate their compassion. By contributing blankets, you are not only providing physical comfort but also showing kindness and solidarity to our homeless neighbors.", event_date: Date.tomorrow+rand(1..20), user_id: 3, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254374/1021390-street_20store_dsc6843_ogjizt.jpg", address: "Rua Visconde de Pirajá, 456 - Ipanema")
Event.create!(title: "Vaccine effort", description: "Join us as we work towards a healthier and more resilient community. Together, we can break barriers, overcome challenges, and ensure that every individual, regardless of their housing status, has access to life-saving vaccines.", event_date: Date.tomorrow+rand(1..20), user_id: 4, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254394/20200519141621517654u_rhcvwe.jpg", address: "Avenida Vieira Souto, 789 - Ipanema")
Event.create!(title: "Collecting clothes", description: "We encourage you to donate clean, gently used or new clothing, including jackets, coats, sweaters, socks, hats, gloves, and other weather-appropriate garments. Your generous contributions will help us create care packages that will be distributed directly to local homeless shelters and outreach programs.", event_date: Date.tomorrow+rand(1..20), user_id: 5, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254397/20180819165858424536u_hsfgpx.jpg", address: "Rua Vinicius de Moraes, 321 - Ipanema")
Event.create!(title: "Volunteer doctors", description: "This event is a remarkable opportunity to collaborate with like-minded professionals and demonstrate the power of empathy and compassion in healing. By volunteering you are not only offering your medical expertise but also showing solidarity and support to vulnerable individuals.", event_date: Date.tomorrow+rand(1..20), user_id: 6, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254427/main_211612_nosso_natal_rlkzgt.jpg", address: "Rua Prudente de Morais, 654 - Ipanema")
Event.create!(title: "Beneficent dinner", description: "Join us for an extraordinary evening of compassion and community as we come together to make a difference in the lives of those experiencing homelessness. The Beneficent Dinner is an empowering event designed to raise awareness and funds, while fostering a sense of unity and understanding for this pressing social issue.", event_date: Date.tomorrow+rand(1..20), user_id: 7, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254428/1111111111111111_enrnjs.jpg", address: "Avenida das Américas, 2000 - Barra da Tijuca")
Event.create!(title: "Social rescue", description: "The event will kick off with an uplifting program that combines storytelling, performances, and inspirational speeches. These narratives will provide unique insights into the experiences of individuals who have triumphed over homelessness, showcasing their resilience, determination, and the pivotal role that support played in their journey to independence. By amplifying these powerful stories, we seek to challenge stereotypes, eliminate stigmas, and foster a deeper understanding of the systemic issues surrounding homelessness.", event_date: Date.tomorrow+rand(1..20), user_id: 8, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686254636/WhatsApp-Image-2021-07-29-at-16.17.51_i7f8u8.jpg", address: "Rua Marquês de São Vicente, 321 - Gávea")
Event.create!(title: "Restoring dignity", description: "Restoring dignity is a heartfelt event dedicated to uplifting and empowering individuals experiencing homelessness, with the goal of helping them regain their sense of self-worth and reclaim their rightful place in society. This transformative gathering seeks to restore hope, inspire change, and foster a community that values and supports the dignity of all.", event_date: Date.tomorrow+rand(1..20), user_id: 9, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686323010/aciso_mem_de_sa_2_tomjgf.jpg", address: "Rua General Urquiza, 987 - Leblon")
Event.create!(title: "Rising hopes", description: "The event will feature inspiring keynote speakers who have overcome homelessness, sharing their stories of triumph and resilience. These narratives serve as powerful reminders that homelessness does not define a person's potential but is merely a chapter in their life journey. By highlighting the stories of those who have risen above adversity, Rising Hopes aims to challenge societal perceptions and inspire individuals to believe in their own capacity to create a brighter future.", event_date: Date.tomorrow+rand(1..20), user_id: 10, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686323017/Acao-ONG-Rio_mrlbg1.jpg", address: "Rua Visconde de Albuquerque, 543 - Leblon")
Event.create!(title: "Streets to stability", description: "Join us at Streets to stability and be part of a movement dedicated to empowering lives and creating lasting change. Together, we can transform the lives of those experiencing homelessness, offer a pathway to stability, and build a society where everyone has the opportunity to thrive.", event_date: Date.tomorrow+rand(1..20), user_id: 11, event_img: "https://res.cloudinary.com/dtz9smyye/image/upload/v1686323024/18882020_1615289768481824_7511414245663266597_n_c7op2c.jpg", address: "Rua Duvivier, 123 - Copacabana")

puts "Destroying all posts..."
Post.destroy_all

puts "Creating new posts..."
Post.create!(content: "Absolutely loved this idea!", event_id: 1, user_id: 2)
Post.create!(content: "It's innovative and refreshing.", event_id: 2, user_id: 3)
Post.create!(content: "Count me in!", event_id: 3, user_id: 4)
Post.create!(content: "Fantastic concept!", event_id: 4, user_id: 5)
Post.create!(content: "Well done!", event_id: 5, user_id: 6)
Post.create!(content: "I'm thoroughly impressed with this idea.", event_id: 6, user_id: 7)
Post.create!(content: "It's brilliant!", event_id: 7, user_id: 8)
Post.create!(content: "I'm totally on board with this.", event_id: 8, user_id: 9)
Post.create!(content: "You've got my full support.", event_id: 9, user_id: 10)
Post.create!(content: "Amazing idea!", event_id: 10, user_id: 11)
Post.create!(content: "Great job!", event_id: 11, user_id: 1)
Post.create!(content: "Count me in for bringing vegetables to the soup kitchen!", event_id: 1, user_id: 3)
Post.create!(content: "I heard about the food donation event, and I'd love to contribute.", event_id: 2, user_id: 4)
Post.create!(content: "Oh, I have some extra blankets lying around at home. I'd be more than happy to donate them for the event.", event_id: 3, user_id: 5)
Post.create!(content: "How can i help with it?", event_id: 4, user_id: 6)
Post.create!(content: "I will bring some clothes aswell.", event_id: 5, user_id: 7)
Post.create!(content: "Let's work together!", event_id: 6, user_id: 8)
Post.create!(content: "I really loved this idea!", event_id: 7, user_id: 9)
Post.create!(content: "Count me in for it!", event_id: 8, user_id: 10)
Post.create!(content: "I can definitely help with the event.", event_id: 9, user_id: 11)
Post.create!(content: "I will be there!", event_id: 10, user_id: 1)
Post.create!(content: "I believe that everyone deserves a chance to build stability in their lives.", event_id: 11, user_id: 2)

puts "Destroying all comments..."
Comment.destroy_all

puts "Creating new comments..."
Comment.create!(content: "I completely agree with you.", user_id: 1, post_id: 2)
Comment.create!(content: "I couldn't agree more!", user_id: 2, post_id: 3)
Comment.create!(content: "I share the same opinion. I agree with you.", user_id: 3, post_id: 4)
Comment.create!(content: "I really liked what you said!", user_id: 4, post_id: 5)
Comment.create!(content: "You've expressed exactly what I was thinking. I agree!", user_id: 5, post_id: 6)
Comment.create!(content: "I'm in complete agreement with what you said.", user_id: 6, post_id: 7)
Comment.create!(content: "I couldn't agree more with what you said.", user_id: 7, post_id: 8)
Comment.create!(content: "I'm so glad you shared that—I feel the same way!", user_id: 8, post_id: 9)
Comment.create!(content: "I'm completely on board with your point of view.", user_id: 9, post_id: 10)
Comment.create!(content: "I liked what you said.", user_id: 10, post_id: 11)
Comment.create!(content: "Loved that!", user_id: 11, post_id: 12)
Comment.create!(content: "I'm more than willing to help!", user_id: 11, post_id: 13)
Comment.create!(content: "Count me in—I'm here to lend a hand.", user_id: 10, post_id: 14)
Comment.create!(content: "I'm fully prepared to lend my help and support.", user_id: 9, post_id: 15)
Comment.create!(content: "I'm here and ready to help out with whatever is needed.", user_id: 8, post_id: 16)
Comment.create!(content: "I'm eager to be of assistance in any way I can.", user_id: 7, post_id: 17)
Comment.create!(content: "I'll gladly contribute my support.", user_id: 6, post_id: 18)
Comment.create!(content: "I'm committed to helping and making a difference.", user_id: 5, post_id: 19)
Comment.create!(content: "I'm ready and available to offer my help.", user_id: 4, post_id: 20)
Comment.create!(content: "Loved what you said.", user_id: 3, post_id: 21)
Comment.create!(content: "I agree, and I'm more than willing to help!", user_id: 1, post_id: 22)
Comment.create!(content: "I completely agree with what you said, and I'm committed to helping.", user_id: 8, post_id: 1)
