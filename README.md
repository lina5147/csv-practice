# CSV & Enumerables Practice

In this exercise you are asked to process a CSV file with Olymic Games data.  This exercise has two parts.  The first allowing you to practice reading in data from a CSV file, processing it and writing the results back to a file.  The second involves using Enumerable methods to manipulate the data from the file.

## Part 1:

In part one you are asked to create 3 methods and you will need to complete them in order:
-   `load_data(filename)` - This method takes a file name and returns the data from the file as an array of Hashes.
-   `total_medals_per_country(olympic_data)`  - This method takes the array of hashes read in from the file in `load_data` and returns an array of hashes with each element having a country name (team), and number of medals that country (team) has won.
-   `save_medal_totals(filename, medal_totals)` - This method writes the medal total information returned from `total_medals_per_country` to another CSV file provided by `filename`.

## Part 2:

In part 2 you will create methods to manipulate the data read in from the file.  You should think carefully and use an Enumerable method to help you complete the method.

-   `all_gold_medal_winners(olympic_data)` - This method returns an array the names of all Gold metal winners.
-   `metals_sorted_by_country(metal_totals)`  - This method takes a list of countries and their metal totals and returns the same list, sorted by country
-    `country_with_most_metals(metal_totals)` - This method returns the country with the highest number of metals.
-    `athlete_height_in_inches(olympic_data)` - This method takes an array of hashes listing all the olympic data and returns a similar list, but with the athlete height in inches instead of centimeters.


## Optionals

If you want additional practice consider:
- Writing the results of the methods from Part 2 to CSV files
- Writing tests for the methods in Part 2