# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.new
admin.username = 'administrador'
admin.role = 1
admin.email = 'admin@hotmail.com'
admin.password = 'admin123'
admin.password_confirmation = 'admin123'
admin.save!


usuario = User.new
usuario.username = 'usuarioaux'
usuario.role = 2
usuario.enable = true
usuario.email = 'usuarioaux@hotmail.com'
usuario.password = '12345678'
usuario.password_confirmation = '12345678'
usuario.save!
