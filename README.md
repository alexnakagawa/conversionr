# conversionr
This is a r package to convert between volume, mass, temperature, and distance units. This package also handles conversions within the metric system and imperial system.

Usage of Convertionr functions
-----

It's very simple to convert units using the `conversionr` package.
You can easily convert units like temperature and volume using the functions `conv_volume` and `conv_temp` for the most commom units. Check the examples bellow:

If you want to convert 100°F to Celsius run the function this way:
`conv_tem(100, "f", "celsius")`

For volume conversions, the logic is pretty much the same:
`conv_volume(25, "pint", "qt")`

