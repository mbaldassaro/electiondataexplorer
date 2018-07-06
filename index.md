2016 Election Data Explorer
========================================================
author: Michael Baldassaro 
date: 7/6/2018
autosize: true

About The App
========================================================

The [2016 election data explorer](https://mbaldassaro.shinyapps.io/electiondataexplorer/) is an initiative to analyze and visualize US electoral, demographic and socio-economic data.  

The goal of the election data explorer is to present conextual data in a highly accessible way to provide a meaningful lens through which to understand the outcome of the 2016 US Presidential Elections  

Interface - Dropdown
========================================================
You can "Choose a variable to display" from the drop down menu and it will automatically generate a map based on the variable you select. 

<!--html_preserve--><div class="shiny-input-panel">
<div class="shiny-flow-layout">
<div>
<div class="form-group shiny-input-container">
<label class="control-label" for="n_breaks">Choose a variable to display</label>
<div>
<select id="n_breaks"><option value="Trump" selected>Trump</option>
<option value="Clinton">Clinton</option>
<option value="White">White</option>
<option value="Black">Black</option>
<option value="HS Diploma">HS Diploma</option>
<option value="College Degree">College Degree</option></select>
<script type="application/json" data-for="n_breaks" data-nonempty="">{}</script>
</div>
</div>
</div>
</div>
</div><!--/html_preserve-->


Interface - Slider
========================================================

Once you have selected a variable, you can "Select a Range" to adjust the range of percentages to be displayed on the map.

<!--html_preserve--><div class="shiny-input-panel">
<div class="shiny-flow-layout">
<div>
<div class="form-group shiny-input-container">
<label class="control-label" for="range">Select a Range</label>
<input class="js-range-slider" id="range" data-type="double" data-min="0" data-max="100" data-from="0" data-to="100" data-step="1" data-grid="true" data-grid-num="10" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
</div>
</div>
</div>
</div><!--/html_preserve-->

About The Data
========================================================
The county level data used to generate the maps comes from the following sources:

* [2016 Presidential Election Results Data](https://github.com/mbaldassaro/County_Level_Election_Results_12-16/blob/master/2016_US_County_Level_Presidential_Results.csv)
* [2016 Unemployment Data](https://www.bls.gov/lau/#tables)
* [2016 Ethnicity / Demographic Data](https://www.census.gov/data/datasets/2016/demo/popest/counties-detail.html)
* [2016 Educational Attainment / Urban-Rural Data](https://www.ers.usda.gov/data-products/county-level-data-sets/download-data/)
* [2016 Poverty / Household Income](https://www.ers.usda.gov/data-products/county-level-data-sets/download-data/)
* [2013 Housing / Age Data](https://www.kaggle.com/joelwilson/2012-2016-presidential-elections/version/2#county_facts.csv)
* [County Map](https://www.census.gov/cgi-bin/geo/shapefiles2010/layers.cgi)


