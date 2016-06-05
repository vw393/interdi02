# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Manufacturer.create(name: 'Manuf1 Taiwan')
Manufacturer.create(name: 'Manuf2 China')
Manufacturer.create(name: 'Manuf3 China')

Technology.create(name: 'RESISTIVE', descr: 'Resistivo')
Technology.create(name: 'CAPACITIVE', descr: 'Capacitivo')
Technology.create(name: 'SAW', descr: 'Saw')
Technology.create(name: 'INFRARED', descr: 'Infrared')

SensorFamily.create(name: 'RES 4F', descr: 'Resistivo 4 fili', technology_id: 1)
SensorFamily.create(name: 'RES 5F', descr: 'Resistivo 5 fili', technology_id: 1)
SensorFamily.create(name: 'RES 5F GFG', descr: 'Resistivo 5 fili GFG', technology_id: 1)
SensorFamily.create(name: 'RES 5F TL', descr: 'Resistivo 5 fili TL', technology_id: 1)
SensorFamily.create(name: 'RES MT', descr: 'Resistivo Multitouch', technology_id: 1)
SensorFamily.create(name: 'CAP PCT con Cover', descr: 'Capacitivo con cover', technology_id: 2)
SensorFamily.create(name: 'CAP PCT senza Cover', descr: 'Capacitivo senza cover', technology_id: 2)
SensorFamily.create(name: 'CAP SURF', descr: 'Capacitivo Surface', technology_id: 2)
SensorFamily.create(name: 'CAP FOIL MW', descr: 'Touchfoil capacitivo microwire', technology_id: 2)
SensorFamily.create(name: 'CAP FOIL ITO', descr: 'Touchfoil capacitivo ITO', technology_id: 2)
SensorFamily.create(name: 'SAW', descr: 'Sensore SAW', technology_id: 3)
SensorFamily.create(name: 'IR', descr: 'Sensore Infrared', technology_id: 4)


Sensor.create(pn: '123456-001', name: 'RES 4F 001', descr: 'Sensore 001 RES 4F', size: '10.1', manufacturer_id: 1, sensor_family_id: 1)
Sensor.create(pn: '123456-002', name: 'RES 4F 002', descr: 'Sensore 002 RES 4F', size: '12.1', manufacturer_id: 1, sensor_family_id: 1)
Sensor.create(pn: '123456-003', name: 'RES 4F 003', descr: 'Sensore 003 RES 4F', size: '14.1', manufacturer_id: 1, sensor_family_id: 1)

Sensor.create(pn: '123456-004', name: 'RES 5F 004', descr: 'Sensore 004 RES 5F', size: '11.1', manufacturer_id: 1, sensor_family_id: 2)
Sensor.create(pn: '123456-005', name: 'RES 5F 005', descr: 'Sensore 005 RES 5F GFG', size: '13.1', manufacturer_id: 1, sensor_family_id: 3)
Sensor.create(pn: '123456-006', name: 'RES 5F 006', descr: 'Sensore 006 RES 5F TL', size: '15.1', manufacturer_id: 1, sensor_family_id: 4)

Sensor.create(pn: '789-123-01', name: 'CAP PCT 001', descr: 'Sensore CAP PCT cc 01', size: '15.1', manufacturer_id: 2, sensor_family_id: 6)
Sensor.create(pn: '789-123-02', name: 'CAP PCT 002', descr: 'Sensore CAP PCT sc 02', size: '15.1', manufacturer_id: 2, sensor_family_id: 7)
Sensor.create(pn: '789-123-03', name: 'CAP SURF 003', descr: 'Sensore CAP PCT surf 03', size: '15.1', manufacturer_id: 2, sensor_family_id: 8)
Sensor.create(pn: '789-123-04', name: 'CAP FOIL 004', descr: 'Sensore CAP PCT foil 04', size: '15.1', manufacturer_id: 3, sensor_family_id: 9)
Sensor.create(pn: '789-123-05', name: 'CAP ITO 005', descr: 'Sensore CAP PCT ito 05', size: '15.1', manufacturer_id: 3, sensor_family_id: 10)

Sensor.create(pn: '135-246-01', name: 'SAW 01', descr: 'Sensore SAW 01', size: '15.1', manufacturer_id: 3, sensor_family_id: 11)

Sensor.create(pn: '999-999-01', name: 'IR 01', descr: 'Sensore IR 01', size: '15.1', manufacturer_id: 3, sensor_family_id: 12)


Board.create(pn: 'ABC-123-EFG', name: 'CTRL 01', descr: 'Controller 01 per RES 4F e 5F')
Board.create(pn: 'ABC-456-ADG', name: 'CTRL 02', descr: 'Controller 02 per CAP PCT')
Board.create(pn: 'ABC-789-XYE', name: 'CTRL 03', descr: 'Controller 03 per RES 4F')
Board.create(pn: 'ABC-135-PPP', name: 'CTRL 04', descr: 'Controller 04 per RES 5F')
Board.create(pn: 'ABC-246-CCC', name: 'CTRL 05', descr: 'Controller 05 per CAP')
Board.create(pn: 'SSS-246-CCC', name: 'CTRL 06', descr: 'Controller 06 per SAW')
Board.create(pn: 'III-246-CCC', name: 'CTRL 07', descr: 'Controller 07 per IR')

Combination.create(sensor_id: 1, board_id: 1)
Combination.create(sensor_id: 2, board_id: 1)
Combination.create(sensor_id: 3, board_id: 1)

Combination.create(sensor_id: 1, board_id: 3)
Combination.create(sensor_id: 2, board_id: 3)
Combination.create(sensor_id: 3, board_id: 3)

Combination.create(sensor_id: 4, board_id: 1)
Combination.create(sensor_id: 5, board_id: 1)
Combination.create(sensor_id: 6, board_id: 1)

Combination.create(sensor_id: 4, board_id: 4)
Combination.create(sensor_id: 5, board_id: 4)
Combination.create(sensor_id: 6, board_id: 4)

Combination.create(sensor_id: 7, board_id: 5)
Combination.create(sensor_id: 8, board_id: 5)
Combination.create(sensor_id: 9, board_id: 5)
Combination.create(sensor_id: 10, board_id: 5)
Combination.create(sensor_id: 11, board_id: 5)

Combination.create(sensor_id: 12, board_id: 6)

Combination.create(sensor_id: 13, board_id: 7)



User.create( email: "lpizzinato@gmail.com", password: "Idlsp1")
