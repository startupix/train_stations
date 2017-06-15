# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin_list = [
    [ "admin@example.com", '123456' ],
]

stations_list = [
    [
        name: "Yerevan Railway Station Sasuntsi David",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean at laoreet sem. Aliquam erat volutpat. Integer gravida ultrices sem sit amet vehicula. Mauris quis felis ultricies dolor tempor lacinia. Donec ac neque nibh. Nunc vulputate condimentum pellentesque. Etiam consectetur orci urna, ut blandit sapien malesuada nec",
        beverage_store: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean at laoreet sem. Aliquam erat volutpat. Integer gravida ultrices sem sit amet vehicula. Mauris quis felis ultricies dolor tempor lacinia. Donec ac neque nibh. Nunc vulputate condimentum pellentesque. Etiam consectetur orci urna, ut blandit sapien malesuada nec",
        address: "Sasuntsi David, Sevan Street, Yerevan, Armenia",
        phone: "+374-60-463444",
        timetable: '[["Yerevan - Tbilisi","18:00","20:00"],["Yerevan - Sevan","15:00","10:00"]]',
    ],
    [
        name: "Sevan Railway Station",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean at laoreet sem. Aliquam erat volutpat. Integer gravida ultrices sem sit amet vehicula. Mauris quis felis ultricies dolor tempor lacinia. Donec ac neque nibh. Nunc vulputate condimentum pellentesque. Etiam consectetur orci urna, ut blandit sapien malesuada nec",
        beverage_store: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean at laoreet sem. Aliquam erat volutpat. Integer gravida ultrices sem sit amet vehicula. Mauris quis felis ultricies dolor tempor lacinia. Donec ac neque nibh. Nunc vulputate condimentum pellentesque. Etiam consectetur orci urna, ut blandit sapien malesuada nec",
        address: "Sasuntsi David, Sevan Street, Yerevan, Armenia",
        phone: "+374-60-463444",
        timetable: '[["Sevan - Tbilisi","18:00","20:00"],["Sevan - Yerevan","10:00","15:00"]]',
    ]
]

admin_list.each do |email, pass|
  admin = Admin.new
  admin.email = email
  admin.password = pass
  admin.password_confirmation = pass
  admin.save!
end

Station.create(stations_list)
