Contact.create!([
  {first_name: "asdf", last_name: "asdf", email: "asdf", phone_number: 12345, middle_name: nil, bio: nil, latitude: nil, longitude: nil, address: nil},
  {first_name: "john", last_name: "cena", email: "youcantseeme@wwe.com", phone_number: 9001, middle_name: nil, bio: nil, latitude: nil, longitude: nil, address: nil},
  {first_name: "test", last_name: "john", email: "asdflaksdjhf", phone_number: 45, middle_name: nil, bio: nil, latitude: nil, longitude: nil, address: nil},
  {first_name: "john", last_name: "Erino", email: "testerino@me.com", phone_number: 86753090, middle_name: nil, bio: nil, latitude: nil, longitude: nil, address: nil},
  {first_name: "test", last_name: "test", email: "test", phone_number: 1234, middle_name: "test", bio: "test", latitude: nil, longitude: nil, address: nil},
  {first_name: "Test", last_name: "Eroni", email: "testeroni@me.com", phone_number: 7685093, middle_name: "", bio: "", latitude: 37.7875712, longitude: -122.4047203, address: nil}
])
User.create!([
  {name: "test", email: "test", password_digest: "$2a$10$ZoTNow.Vk.Ib652C27zcTuZY5PSDnSbxPQrxzg64edL5Bkbt4.rIW"}
])
