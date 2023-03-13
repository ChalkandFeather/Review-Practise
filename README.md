Overview
Create an application which takes in a comma' , 'separated string of results. It prints a summary which totals each result.

Expected program
It’s expected that this program will work similarly to this:

report = Report.new("Green, Green, Amber, Red, Green")

report.generate

# => "Green: 3\nAmber: 1\nRed: 1"

Customer needs
Opening statement
I work for an School Reports company. We help teachers to find out how their students did on tests. We get a string of comma separated values with test results from schools, and we’d like you to build a simple report on top of that.

The solution should take a bunch of test results from a school, and display a human-readable output of those results.
The input is a string of comma separated values.
The output is a string summarising the input results.
The test results are Red, Amber, or Green.
An example string input is "Green, Green, Amber, Red, Green"
An example string output is "Green: 3\nAmber: 1\nRed: 1"
The grades in the output string should always be in the order Green, then Amber, then Red.
Sometimes there are results other than Green, Amber, or Red in the string. For those results, just add an “uncounted” line to the report with the number of such occurrences.
If grades are lowercase or have different capitalisation, eg: "green, AMBER" the grades should still be counted and added to the relevant category.
If a grade is not present in the input string, it should not be in the output. ie. Zero counts should not be present in the output.
Generally there is a comma and a space in the input, but we’d like the solution to handle cases where this isn’t true. Eg: "Green,Amber,Red"

The user needs see a count of grades which result from school tests.
Results should be displayed "Green: Amber: Red:"
deviations from Green Amber Red should not be counted
Zero count should not be returned
mixed lower/upper case or deviations with space/comma should be counted.

Test Resulst
INPUT
A string seperated by commas
"Green, Green, Amber, Red, Green"
OUTPUT
A string summarising result
"Green: 3\nAmber: 1\nRed: 1"

Test suite

empty string returns empty string ""
report = Report.new("Green, Green, Amber, Red, Green")

#green 1 Amber 1 Red 1 # expect

#green 0 Amber 2 Red 1 # expect Amber: 2 Red:1

#GREEN amber Red #expect

#Non green/amber/red grades # expect 'uncounted'
