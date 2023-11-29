# app.py
from flask import Flask, render_template, request, redirect, url_for
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import text
from datetime import datetime
from sqlalchemy import ForeignKey
from sqlalchemy.exc import SQLAlchemyError

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mssql+pyodbc://@SUJENDRA_LAPPY/DMDD_FINAL_PROJECT?driver=ODBC+Driver+17+for+SQL+Server&Trusted_Connection=yes'
db = SQLAlchemy(app)

class DockingArea(db.Model):
    DockingAreaID = db.Column(db.Integer, primary_key=True)
    DockingAreaName = db.Column(db.String(50))
    DockingAddress = db.Column(db.String(50))
    NumberOfVehicles = db.Column(db.Integer)

class Customer(db.Model):
    CustomerID = db.Column(db.Integer, primary_key=True)
    FirstName = db.Column(db.String(50))
    LastName = db.Column(db.String(50))
    Email = db.Column(db.String(50))
    Password = db.Column(db.LargeBinary)
    Phone = db.Column(db.String(50))
    Address = db.Column(db.String(50))
    City = db.Column(db.String(50))
    State = db.Column(db.String(50))
    ZIP = db.Column(db.String(50))

class Employee(db.Model):
    EmployeeID = db.Column(db.Integer, primary_key=True)
    FirstName = db.Column(db.String(50))
    LastName = db.Column(db.String(50))
    Email = db.Column(db.String(50))
    Phone = db.Column(db.String(50))
    Designation = db.Column(db.String(50))

class Transaction(db.Model):
    TransactionID = db.Column(db.Integer, primary_key=True)
    RentDuration = db.Column(db.Integer)
    Date_Time = db.Column(db.DateTime)
    COST = db.Column(db.DECIMAL)

class Insurance(db.Model):
    InsuranceID = db.Column(db.Integer, primary_key=True)
    Premium = db.Column(db.Integer)
    Details = db.Column(db.String(100))

class RewardSystem(db.Model):
    __tablename__ = 'RewardSystem'
    RewardID = db.Column(db.Integer, primary_key=True)
    RewardPoints = db.Column(db.Integer)
    DockingAreaID = db.Column(db.Integer, db.ForeignKey('DockingArea.DockingAreaID'))
    CustomerID = db.Column(db.Integer, db.ForeignKey('Customer.CustomerID'))

class Vehicle(db.Model):
    VehicleID = db.Column(db.Integer, primary_key=True)
    DockingAreaID = db.Column(db.Integer, ForeignKey('docking_area.DockingAreaID'))
    VehicleType = db.Column(db.String(50))
    RegistrationNumber = db.Column(db.String(50))
    CurrentLocation = db.Column(db.String(50))
    StorageSpaceSize = db.Column(db.Integer)

class Truck(db.Model):
    VehicleID = db.Column(db.Integer, ForeignKey('vehicle.VehicleID'), primary_key=True)
    TruckType = db.Column(db.String(50))
    Ramp = db.Column(db.String(50))
    Mileage = db.Column(db.Integer)
    FuelType = db.Column(db.String(50))

class Trailer(db.Model):
    VehicleID = db.Column(db.Integer, ForeignKey('vehicle.VehicleID'), primary_key=True)
    TrailerType = db.Column(db.String(50))
    HitchType = db.Column(db.String(50))

class Booking(db.Model):
    BookingID = db.Column(db.Integer, primary_key=True)
    VehicleID = db.Column(db.Integer, ForeignKey('vehicle.VehicleID'))
    CustomerID = db.Column(db.Integer, ForeignKey('customer.CustomerID'))
    InsuranceID = db.Column(db.Integer, ForeignKey('insurance.InsuranceID'))
    TransactionID = db.Column(db.Integer, ForeignKey('transaction.TransactionID'))
    SuggestedDropoffLocationID = db.Column(db.Integer)  # Replace with the appropriate foreign key if needed
    PickupLocation = db.Column(db.String(50))
    DropOffLocation = db.Column(db.String(50))
    StartDateTime = db.Column(db.DateTime)
    EndDateTime = db.Column(db.DateTime)
    TotalCost = db.Column(db.DECIMAL)

class Complain(db.Model):
    ComplainID = db.Column(db.Integer, primary_key=True)
    CustomerID = db.Column(db.Integer, ForeignKey('customer.CustomerID'))
    EmployeeID = db.Column(db.Integer, ForeignKey('employee.EmployeeID'))
    ComplainDate = db.Column(db.DateTime)
    ComplainTime = db.Column(db.DateTime)
    Details = db.Column(db.String(255))

class PaymentMethod(db.Model):
    PaymentID = db.Column(db.Integer, primary_key=True)
    TransactionID = db.Column(db.Integer, ForeignKey('transaction.TransactionID'))
    CustomerID = db.Column(db.Integer, ForeignKey('customer.CustomerID'))
    PaymentType = db.Column(db.String(50))

class Card(db.Model):
    PaymentID = db.Column(db.Integer, ForeignKey('payment_method.PaymentID'), primary_key=True)
    CardNumber = db.Column(db.LargeBinary)
    Name = db.Column(db.String(50))
    CardType = db.Column(db.String(50))
    ExpiryDate = db.Column(db.DATE)

class BankAccount(db.Model):
    PaymentID = db.Column(db.Integer, ForeignKey('payment_method.PaymentID'), primary_key=True)
    AccountHolderName = db.Column(db.String(50))
    BankAccountNumber = db.Column(db.LargeBinary)
    RoutingNumber = db.Column(db.String(50))
    AccountType = db.Column(db.String(50))

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/customers')
def customers():
    customers_list = Customer.query.all()
    return render_template('customers.html', customers=customers_list)

@app.route('/customers/add', methods=['GET', 'POST'])
def add_customer():
    if request.method == 'POST':
        # Get form data
        first_name = request.form['first_name']
        last_name = request.form['last_name']
        email = request.form['email']
        raw_password = request.form['password']
        phone = request.form['phone']
        address = request.form['address']
        city = request.form['city']
        state = request.form['state']
        zip_code = request.form['zip']

        # Convert the password to bytes for storage in VARBINARY column
        password_bytes = bytes(raw_password, 'utf-8')

        # Create a new Customer object
        new_customer = Customer(
            FirstName=first_name,
            LastName=last_name,
            Email=email,
            Password=password_bytes,
            Phone=phone,
            Address=address,
            City=city,
            State=state,
            ZIP=zip_code
        )

        # Add the new customer to the database
        db.session.add(new_customer)
        db.session.commit()

        return redirect(url_for('customers'))

    return render_template('add_customer.html')

@app.route('/customers/edit/<int:id>', methods=['GET', 'POST'])
def edit_customer(id):
    customer = Customer.query.get(id)
    
    if request.method == 'POST':
        # Update customer details
        customer.FirstName = request.form['first_name']
        customer.LastName = request.form['last_name']
        customer.Email = request.form['email']
        customer.Phone = request.form['phone']
        customer.Address = request.form['address']
        customer.City = request.form['city']
        customer.State = request.form['state']
        customer.ZIP = request.form['zip']
        
        # Check if a new password is provided
        new_password = request.form['password']
        if new_password:
            # Convert the new password to bytes for storage in VARBINARY column
            password_bytes = bytes(new_password, 'utf-8')
            customer.Password = password_bytes

        # Commit changes to the database
        db.session.commit()

        # Redirect to the customers list page
        return redirect(url_for('customers'))

    # Render the "Edit Customer" form with the customer details
    return render_template('edit_customer.html', customer=customer)

@app.route('/customers/delete/<int:id>')
def delete_customer(id):
    customer = Customer.query.get(id)
    db.session.delete(customer)
    db.session.commit()
    return redirect(url_for('customers'))

@app.route('/customers/all', methods=['GET'])
def get_all_customers():
    customers_list = Customer.query.all()
    customers_json = [{'CustomerID': c.CustomerID,
                       'FirstName': c.FirstName,
                       'LastName': c.LastName,
                       'Email': c.Email,
                       'Phone': c.Phone,
                       'Address': c.Address,
                       'City': c.City,
                       'State': c.State,
                       'ZIP': c.ZIP} for c in customers_list]
    return jsonify(customers_json)


@app.route('/bookings')
def bookings():
    bookings_list = Booking.query.all()
    return render_template('bookings.html', bookings=bookings_list)

@app.route('/bookings/add', methods=['GET', 'POST'])
def add_booking():
    if request.method == 'POST':
        # Retrieve form data
        vehicle_id = request.form['vehicle_id']
        customer_id = request.form['customer_id']
        insurance_id = request.form['insurance_id']
        transaction_id = request.form['transaction_id']
        pickup_location = request.form['pickup_location']
        dropoff_location = request.form['dropoff_location']
        start_date_time = request.form['start_date_time']
        end_date_time = request.form['end_date_time']
        total_cost = request.form['total_cost']

        start_date_time = datetime.strptime(start_date_time, '%Y-%m-%dT%H:%M')
        end_date_time = datetime.strptime(end_date_time, '%Y-%m-%dT%H:%M')

        try:
            # Call the stored procedure using SQLAlchemy and text()
            db.session.execute(
                text("EXEC AddBooking :vehicle_id, :customer_id, :insurance_id, :transaction_id, "
                     ":pickup_location, :dropoff_location, :start_date_time, :end_date_time, :total_cost"),
                {
                    'vehicle_id': vehicle_id,
                    'customer_id': customer_id,
                    'insurance_id': insurance_id,
                    'transaction_id': transaction_id,
                    'pickup_location': pickup_location,
                    'dropoff_location': dropoff_location,
                    'start_date_time': start_date_time,
                    'end_date_time': end_date_time,
                    'total_cost': total_cost
                }
            )

            # Commit changes to the database
            db.session.commit()

            # Redirect to the bookings page
            return redirect(url_for('bookings'))
        except Exception as e:
            # Handle exceptions, e.g., vehicle not available
            # You can customize this based on your specific requirements
            error_message = str(e)
            return render_template('error.html', error_message=error_message)

    return render_template('add_booking.html')

@app.route('/bookings/edit/<int:id>', methods=['GET', 'POST'])
def edit_booking(id):
    booking = Booking.query.get(id)
    if request.method == 'POST':
        # Update booking details
        booking.VehicleID = request.form['vehicle_id']
        booking.CustomerID = request.form['customer_id']
        booking.InsuranceID = request.form['insurance_id']
        booking.TransactionID = request.form['transaction_id']
        booking.PickupLocation = request.form['pickup_location']
        booking.DropOffLocation = request.form['dropoff_location']
        booking.StartDateTime = datetime.strptime(request.form['start_date_time'], '%Y-%m-%dT%H:%M')
        booking.EndDateTime = datetime.strptime(request.form['end_date_time'], '%Y-%m-%dT%H:%M')
        booking.TotalCost = request.form['total_cost']

        # Commit changes to the database
        db.session.commit()

        # Redirect to the bookings page
        return redirect(url_for('bookings'))

    # Render the "Edit Booking" form with the booking details
    return render_template('edit_booking.html', booking=booking)

@app.route('/bookings/delete/<int:id>')
def delete_booking(id):
    booking = Booking.query.get(id)
    db.session.delete(booking)
    db.session.commit()
    return redirect(url_for('bookings'))

@app.route('/bookings/update_vehicle_location', methods=['POST'])
def update_vehicle_location():
    vehicle_id = request.form.get('vehicle_id')
    new_location = request.form.get('new_location')

    try:
        # Call the stored procedure using SQLAlchemy and text()
        db.session.execute(
            text("EXEC UpdateVehicleLocation :vehicle_id, :new_location"),
            {
                'vehicle_id': vehicle_id,
                'new_location': new_location,
            }
        )

        # Commit changes to the database
        db.session.commit()

        # Redirect to the bookings page
        return redirect(url_for('vehicles'))
    except Exception as e:
        # Handle exceptions, e.g., invalid input
        # You can customize this based on your specific requirements
        error_message = str(e)
        return render_template('error.html', error_message=error_message)

@app.route('/vehicles')
def vehicles():
    vehicles_list = Vehicle.query.all()
    return render_template('vehicles.html', vehicles=vehicles_list)

@app.route('/vehicles/add', methods=['GET', 'POST'])
def add_vehicle():
    if request.method == 'POST':
        new_vehicle = Vehicle(
            DockingAreaID=request.form['docking_area_id'],
            VehicleType=request.form['vehicle_type'],
            RegistrationNumber=request.form['registration_number'],
            CurrentLocation=request.form['current_location'],
            StorageSpaceSize=request.form['storage_space_size']
        )
        db.session.add(new_vehicle)
        db.session.commit()
        return redirect(url_for('vehicles'))
    return render_template('add_vehicle.html')

@app.route('/vehicles/edit/<int:id>', methods=['GET', 'POST'])
def edit_vehicle(id):
    vehicle = Vehicle.query.get(id)
    if request.method == 'POST':
        # Update vehicle details
        vehicle.DockingAreaID = request.form['docking_area_id']
        vehicle.VehicleType = request.form['vehicle_type']
        vehicle.RegistrationNumber = request.form['registration_number']
        vehicle.CurrentLocation = request.form['current_location']
        vehicle.StorageSpaceSize = request.form['storage_space_size']

        # Commit changes to the database
        db.session.commit()

        # Redirect to the vehicles page
        return redirect(url_for('vehicles'))

    # Render the "Edit Vehicle" form with the vehicle details
    return render_template('edit_vehicle.html', vehicle=vehicle)

@app.route('/vehicles/delete/<int:id>')
def delete_vehicle(id):
    vehicle = Vehicle.query.get(id)
    db.session.delete(vehicle)
    db.session.commit()
    return redirect(url_for('vehicles'))

@app.route('/vehicles/all', methods=['GET'])
def get_all_vehicles():
    vehicles_list = Vehicle.query.all()
    vehicles_json = [{'VehicleID': v.VehicleID,
                      'DockingAreaID': v.DockingAreaID,
                      'VehicleType': v.VehicleType,
                      'RegistrationNumber': v.RegistrationNumber,
                      'CurrentLocation': v.CurrentLocation,
                      'StorageSpaceSize': v.StorageSpaceSize} for v in vehicles_list]
    return jsonify(vehicles_json)

@app.route('/rewards')
def view_rewards():
    try:
        rewards_list = RewardSystem.query.all()
        return render_template('rewards.html', rewards=rewards_list)
    except SQLAlchemyError as e:
        # Log the error or render an error template
        error_message = str(e)
        return render_template('error.html', error_message=error_message)
    
if __name__ == '__main__':
    app.run(debug=True) 
