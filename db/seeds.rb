## Initial seed for categories table (static)
#Category.create!(id: 1, name: "Pre Wedding Needs")
#Category.create!(id: 2, name: "Ceremony")
#Category.create!(id: 3, name: "Venues")
#Category.create!(id: 4, name: "Hotels")
#Category.create!(id: 5, name: "Catering")
#Category.create!(id: 6, name: "Photos & Videos")
#Category.create!(id: 7, name: "Dress, Attire & Accesories")
#Category.create!(id: 8, name: "Hair & Make-up")
#Category.create!(id: 9, name: "Decoration & Lighting")
#Category.create!(id: 10, name: "Wedding Planners")
#Category.create!(id: 11, name: "Entertainment")
#Category.create!(id: 12, name: "Wedding Cakes")
#Category.create!(id: 13, name: "Rings & Jewelry")
#Category.create!(id: 14, name: "Invitations")
#Category.create!(id: 15, name: "Favors & Gifts")
#Category.create!(id: 16, name: "Car Rentals")
#Category.create!(id: 17, name: "Beauty & Wellness")
#Category.create!(id: 18, name: "Post Wedding/Honeymoon")
#Category.create!(id: 19, name: "Others/Unique Services")
#Subcategory.create!(name: "Marriage Documents", categoryid: 1)
#Subcategory.create!(name: "Marriage Preparation Programs", categoryid: 1)
#Subcategory.create!(name: "Chinese Engagement", categoryid: 1)
#Subcategory.create!(name: "Ceremony", categoryid: 2)
#Subcategory.create!(name: "Venues", categoryid: 3)
#Subcategory.create!(name: "Hotels", categoryid: 4)
#Subcategory.create!(name: "Caterers", categoryid: 5)
#Subcategory.create!(name: "Specialty Food Stations", categoryid: 5)
#Subcategory.create!(name: "Wines & Spirits", categoryid: 5)
#Subcategory.create!(name: "Photography", categoryid: 6)
#Subcategory.create!(name: "Videography", categoryid: 6)
#Subcategory.create!(name: "Album Suppliers", categoryid: 6)
#Subcategory.create!(name: "Designers", categoryid: 7)
#Subcategory.create!(name: "Men's Formal Wear", categoryid: 7)
#Subcategory.create!(name: "Accesories", categoryid: 7)
#Subcategory.create!(name: "Hair & Make-up", categoryid: 8)
#Subcategory.create!(name: "Event Stylist", categoryid: 9)
#Subcategory.create!(name: "Florists", categoryid: 9)
#Subcategory.create!(name: "Lights & Sounds", categoryid: 9)
#Subcategory.create!(name: "Projectors", categoryid: 9)
#Subcategory.create!(name: "Wedding Planners", categoryid: 10)
#Subcategory.create!(name: "Emcee", categoryid: 11)
#Subcategory.create!(name: "Strings & Bands", categoryid: 11)
#Subcategory.create!(name: "DJs", categoryid: 11)
#Subcategory.create!(name: "Wedding Cakes", categoryid: 12)
#Subcategory.create!(name: "Rings & Jewelry", categoryid: 13)
#Subcategory.create!(name: "Caligraphy", categoryid: 14)
#Subcategory.create!(name: "Invitations", categoryid: 14)
#Subcategory.create!(name: "Favors & Gifts", categoryid: 15)
#Subcategory.create!(name: "Car Rentals", categoryid: 16)
#Subcategory.create!(name: "Beauty & Wellness", categoryid: 17)
#Subcategory.create!(name: "Airlines", categoryid: 18)
#Subcategory.create!(name: "Travel Agencies", categoryid: 18)
#Subcategory.create!(name: "Proposals, Stags & Showers", categoryid: 19)
#Subcategory.create!(name: "Engagement Stylist", categoryid: 19)
#Subcategory.create!(name: "Photo Booths", categoryid: 19)
#Subcategory.create!(name: "Mobile Bars", categoryid: 19)
#Subcategory.create!(name: "Rentals", categoryid: 19)
##initial seed for todo_items table (static)
#TodoItem.create!(item: "Budget")
#TodoItem.create!(item: "Marriage License")
#TodoItem.create!(item: "Ceremony Venue")
#TodoItem.create!(item: "Reception Venue")
#TodoItem.create!(item: "Ceremony Officiant")
#TodoItem.create!(item: "Wedding Planner or Coordinator")
#TodoItem.create!(item: "Photographer")
#TodoItem.create!(item: "Videographer")
#TodoItem.create!(item: "Catering")
#TodoItem.create!(item: "Bride's Attire")
#TodoItem.create!(item: "Hair and Make-up")
#TodoItem.create!(item: "Guest List")
#TodoItem.create!(item: "Entourage Line-up")
#TodoItem.create!(item: "Invitations")
#TodoItem.create!(item: "Wedding Registry")
#TodoItem.create!(item: "Wedding Rings")
#TodoItem.create!(item: "Wedding Preparation Venue/Hotel")
#TodoItem.create!(item: "Groom's Attire")
#TodoItem.create!(item: "Honeymoon Plans")
#TodoItem.create!(item: "Wedding Rings")
#TodoItem.create!(item: "Band or DJ")
#TodoItem.create!(item: "Photobooth")
#TodoItem.create!(item: "Flowers, Decors, and Styling")
#TodoItem.create!(item: "Lights and Sound")
#TodoItem.create!(item: "Wedding Program")
#initial seed for post_categories table (static)
#PostCategory.create!(category: 1, post_type: 1, name: "Venues", description: "Forum - Venues")
#PostCategory.create!(category: 1, post_type: 2, name: "Photo/Video", description: "Forum - Photo/Vid")
#PostCategory.create!(category: 1, post_type: 3, name: "Food", description: "Forum - Food")
#PostCategory.create!(category: 1, post_type: 4, name: "Music", description: "Forum - Music")
#PostCategory.create!(category: 1, post_type: 5, name: "Attire and Accessories", description: "Forum - Attire/Accessories")
#PostCategory.create!(category: 1, post_type: 6, name: "DIY Ideas", description: "Forum - DIY Ideas")
#PostCategory.create!(category: 1, post_type: 7, name: "Pre-wedding Parties", description: "Forum - Pre-wedding Parties")
#PostCategory.create!(category: 1, post_type: 8, name: "Counseling", description: "Forum - Counseling")
#PostCategory.create!(category: 1, post_type: 9, name: "HEAP Chit Chat", description: "Forum - HEAP Chit Chat")
#PostCategory.create!(category: 1, post_type: 10, name: "Bridezilla", description: "Forum - Bridezilla")
#PostCategory.create!(category: 1, post_type: 11, name: "Honeymoon", description: "Forum - Honeymoon")
PostCategory.create!(category: 1, post_type: 12, name: "Beauty and Wellness", description: "Forum - Beauty and Wellness")
#Location.create!(name: "Caloocan")
#Location.create!(name: "Las Pinas")
#Location.create!(name: "Makati")
#Location.create!(name: "Malabon")
#Location.create!(name: "Mandaluyong")
#Location.create!(name: "Manila")
#Location.create!(name: "Marikina")
#Location.create!(name: "Muntinlupa")
#Location.create!(name: "Navotas")
#Location.create!(name: "Paranaque")
#Location.create!(name: "Pasay")
#Location.create!(name: "Pasig")
#Location.create!(name: "Quezon City")
#Location.create!(name: "San Juan")
#Location.create!(name: "Taguig")
#Location.create!(name: "Valenzuela")
