mcd = Restaurant.find_or_create_by(name: "Mc Donald")
bk = Restaurant.find_or_create_by(name: "Burger King")
fg = Restaurant.find_or_create_by(name: "Five Guys")
taco = Restaurant.find_or_create_by(name: "Taco Bells")

ray = Customer.find_or_create_by(given_name: "Raynaldo", family_name: "Sutisna")
anne = Customer.find_or_create_by(given_name: "Anne", family_name: "Nardolilli")
matteo = Customer.find_or_create_by(given_name: "Matteo", family_name: "Ricci")

mcd_ray = Review.find_or_create_by(customer: ray, restaurant: mcd, rating: 5)
bk_ray = Review.find_or_create_by(customer: ray, restaurant: bk, rating: 4)
fg_ray = Review.find_or_create_by(customer: ray, restaurant: fg, rating: 3)
taco_ray = Review.find_or_create_by(customer: ray, restaurant: taco, rating: 5)

mcd_anne = Review.find_or_create_by(customer: anne, restaurant: mcd, rating: 5)
bk_anne = Review.find_or_create_by(customer: anne, restaurant: bk, rating: 5)
fg_anne = Review.find_or_create_by(customer: anne, restaurant: fg, rating: 5)



matteo_bk = Review.find_or_create_by(customer: matteo, restaurant:bk, rating: 5)

