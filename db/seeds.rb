# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Add initial role in database.


# Capistrano-rails-collection cammands
#cap production rails:rake:log:clear
#cap production rails:rake:tmp:clear
#cap production rails:rake:db:drop
#cap production rails:rake:db:reset
#cap production rails:rake:db:setup
#cap production rails:rake:db:seed
#cap production rails:rake:db:migrate
#cap production rails:rake:db:rollback


# Roles

unless Role.all.present?
    roles = Role.create(
        [
            {name: "superuser"},
            {name: "root"},
            {name: "guest"},
            {name: "user"},
            {name: "demo"},
            {name: "administrateur"},
            {name: "agent"}
           

        ])
else
    roles = Role.all

end



# Permission
unless Permission.all.present?
    permissions = Permission.create(
        [
            {name: "create"},
            {name: "edit"},
            {name: "update"},
            {name: "delete"},
            {name: "search"},
            {name: "show"},
            {name: "denied"}
 

        ])
else
    permissions = Permission.all

end

# Users
unless User.all.present?
    users = User.create([
        {login: "superuser",  email: "superuser@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id:  Role.find_by(name: "superuser").id},
        {login: "root",  email: "root@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id: Role.find_by(name: "root").id},
        {login: "user",  email: "user@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id:  Role.find_by(name: "user").id},
        {login: "guest",  email: "guest@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id:  Role.find_by(name: "guest").id},
        {login: "demo",  email: "demo@gmail.com",  password: "demo2019", password_confirmation: "demo2019", role_id: Role.find_by(name: "superuser").id}


    
    ])
else   
    users = User.all
end



unless Profile.all.present?
    profile = Profile.create([
        {
            first_name: "Amos",  
            last_name: "DEMBELE",
            user_id: users.first.id
        },
        {
            first_name: "Alassane",  
            last_name: "BABY",
            user_id: users.last.id
        }
    
    ])

end


# Products categories
unless ProductCategory.all.present?
    product_categories = ProductCategory.create([
        {
            name: "Fuel",  
            user_id: users.last.id
        },
        {
            name: "Essence",  
            user_id: users.last.id
        }
    
    ])
else

    product_categories = ProductCategory.all

end

# Products 
unless Product.all.present?
    products = Product.create([
        {
            product_category_id: product_categories.first.id ,
            name: "Gaz Oil",
            price: 650,
            user_id: users.last.id
        },
        {
            product_category_id: product_categories.last.id ,
            name: "Essence", 
            price: 700,
            user_id: users.last.id
        }
    
    ])
else

    products = Product.all

end

# Products categories
unless StatementType.all.present?
    statement_types = StatementType.create([
        {
            name: "Ouverture",  
            user_id: users.last.id
        },
        {
            name: "Fermeture",  
            user_id: users.last.id
        }
    
    ])
else

    statement_types = StatementType.all

end


# Products categories
unless SalePoint.all.present?
    sale_points = SalePoint.create([
        {
            name: "STATION 1",  
            user_id: users.last.id
        },
        {
            name: "STATION 2",  
            user_id: users.last.id
        }
    
    ])
else

    sale_points = SalePoint.all

end


# Products categories
unless Agent.all.present?
    agents = Agent.create([
        {
            first_name: "Amadou",  
            last_name: "YARA",  
            user_id: users.last.id,
            sale_point_id: sale_points.last.id
        },
        {
            first_name: "Halidou",  
            last_name: "MAIGA",  
            user_id: users.last.id,
            sale_point_id: sale_points.last.id
        }
    
    ])
else

    agents = Agent.all

end