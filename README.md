# conversionr

This is an R package to convert between volume, mass, temperature, and distance units. The package covers converting between basic units of the forementioned categories, and also covers conversions between imperial and standard units.

## Installation
Open up an R console. Run the following line:

`install.packages('conversionr')`

## Usage of Convertionr functions

It's very simple to convert units using the `conversionr` package.
You can easily convert units like temperature and volume using the functions `conv_volume` and `conv_temp` for the most commom units. Check the examples bellow:

If you want to convert 100�F to Celsius run the function this way:
`conv_tem(100, "f", "celsius")`

For volume conversions, the logic is pretty much the same:
`conv_volume(25, "pint", "qt")`


## Authors
Alex Nakagawa ([Github](https://github.com/alexnakagawa)) // Camila Ferreira ([Github](https://github.com/camilapferreira)) // Rohan Karanth ([Github](https://github.com/rmk4mk))

