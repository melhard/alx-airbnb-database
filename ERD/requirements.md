User

Attributes:

 user_id (Primary Key)

 name

 email

 phone_number

 password

 role (e.g., "host", "guest")

Property

Attributes:

 property_id (Primary Key)

 title

 description

 address

 price_per_night

 user_id (Foreign Key referring to User)

Booking

Attributes:

 booking_id (Primary Key)

 user_id (Foreign Key referring to User)

 property_id (Foreign Key referring to Property)

 start_date

 end_date

 total_price

 status (e.g., "confirmed", "cancelled")

Payment

Attributes:

 payment_id (Primary Key)

 booking_id (Foreign Key referring to Booking)

 payment_date

 payment_method (e.g., "credit card", "PayPal")

 amount

Review

Attributes:

 review_id (Primary Key)

 user_id (Foreign Key referring to User)

 property_id (Foreign Key referring to Property)

 rating (e.g., 1-5)

 comments

 date

Define the Relationships Between Entities: Relationship 1: User to Property

1-to-many: A User can own multiple Properties.

 One user can list many properties.

Relationship 2: User to Booking

1-to-many: A User (guest) can make many Bookings.

    One user can make multiple bookings for different properties.

Relationship 3: Property to Booking

1-to-many: A Property can be booked multiple times by different Users.

    One property can have many bookings.

Relationship 4: Booking to Payment

1-to-1: A Booking can have one Payment.

    One booking corresponds to one payment.

Relationship 5: Property to Review

1-to-many: A Property can have many Reviews.

    One property can have many reviews.

Relationship 6: User to Review

1-to-many: A User can write multiple Reviews for different Properties.

    One user can leave many reviews.

https://drive.google.com/file/d/1HdYQbo9YDaISprQ06zEwJBziPIEnRMxc/view?usp=drive_link
