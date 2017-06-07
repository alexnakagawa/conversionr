# conversionr

This is an R package to convert between volume, mass, temperature, and distance units. The package covers converting between basic units of the forementioned categories, and also covers conversions between metric units.

## Installation

Open up an R console. Run the following line:

`install.packages('conversionr')`

## Usage of Conversionr functions
  
  It's very simple to convert units using the `conversionr` package.
  You can easily convert units like temperature, volume, mass, and distance using the functions 'conv_temp', 'conv_volume', 'conv_mass', and 'conv_dist' for the most common units. You can also convert in between milli, centi, base, and kilo for the metric system. Check the examples below:
  
 If you want to convert 100�F to Celsius run the function this way:
 
  'conv_tem(100, "f", "celsius")'
 
 For volume conversions, the logic is pretty much the same:
 
 'conv_volume(25, "pint", "qt")'
 
 The same format follows for mass, and distance:
 
 'conv_mass(1,"lb","oz")'
 
 'conv_distance(4,'feet','m')'
 
 To convert in between values of the metric system you can do it like so:
 
 'conv_metric(5,"milli","kilo")'
 

## Authors

Alex Nakagawa ([Github](https://github.com/alexnakagawa)) // Camila Ferreira ([Github](https://github.com/camilapferreira)) // Rohan Karanth ([Github](https://github.com/rmk4mk))
