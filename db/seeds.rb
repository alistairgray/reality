########################################################################
# USERS
########################################################################
print "Creating Users..."
User.destroy_all

u1 = User.create! name: "Peter", email: "peter@biz.com", password: "chicken", user_type: "owner"
u2 = User.create! name: "Paul", email: "paul@biz.com", password: "chicken", user_type: "applicant"
u3 = User.create! name: "Luke", email: "luke@biz.com", password: "chicken", user_type: "owner"
u4 = User.create! name: "Zara", email: "zara@biz.com", password: "chicken", user_type: "applicant"
u5 = User.create! name: "Lay", email: "lay@biz.com", password: "chicken", user_type: "owner"
u6 = User.create! name: "bridget", email: "bridget@biz.com", password: "chicken", user_type: "applicant"

# Setup Confirmations -------------------------------------------------#
puts "created #{User.count} users"

#----------------------------------------------------------------------#
########################################################################
# PROPERTIES
########################################################################
print "Creating Properties..."
Property.destroy_all

p1 = Property.create! address: "123 Fourth Street", live: 1, bedrooms: 3, status: 0, user_id: u1.id
p2 = Property.create! address: "567 Eigth Street", live: 1, bedrooms: 2, status: 0, user_id: u3.id
p3 = Property.create! address: "910 Eleven Street", live: 1, bedrooms: 5, status: 0, user_id: u3.id

# Setup Confirmations -------------------------------------------------#
puts "created #{Property.count} properties"
puts "first property belongs to #{Property.first.owner.name} at "

#----------------------------------------------------------------------#
########################################################################
# APPPLICATIONS
########################################################################
print "Creating applications..."
Application.destroy_all

a1 = Application.create! user_id: u2.id
a2 = Application.create! user_id: u4.id
a3 = Application.create! user_id: u6.id

# Setup Confirmations -------------------------------------------------#
puts "created #{Application.count} applications"

#----------------------------------------------------------------------#
########################################################################
# FEEDBACK
########################################################################
print "Creating feedbacks..."
Feedback.destroy_all

f1 = Feedback.create!

# Setup Confirmations -------------------------------------------------#
puts "created #{Feedback.count} feedbacks"

#----------------------------------------------------------------------#
