library(shiny) 
library(maps)
library(mapproj)
library(shinydashboard)
source("helpers.R")
counties <- readRDS("data/county.rds")

shinyServer(function(input, output) {
   
  output$map <- renderPlot({
    data <- switch(input$var, 
                   "Percent Clinton" = counties$demPercent,
                   "Percent Trump" = counties$gopPercent,
                   "Percent White" = counties$white,
                   "Percent Black" = counties$black,
                   "Percent Hispanic" = counties$hispanic,
                   "Percent Asian" = counties$asian,
                   "Percent No HS Diploma" = counties$no_hs_diploma,
                   "Percent HS Diploma"= counties$hs_diploma,
                   "Percent Some College" = counties$some_college,
                   "Percent College Degree" = counties$college_degree,
                   "Percent Estimated Poverty" = counties$college_degree,
                   "Percent Unemployed" = counties$unemployedrate,
                   "Percent Home Ownership" = counties$home_ownership,
                   "Percent Multi-Unit Homes" = counties$multi_unit_homes
                   )
                   
    
    color <- switch(input$var, 
                    "Percent Trump" = "red",
                    "Percent White" = "darkgreen",
                    "Percent Black" = "brown",
                    "Percent Hispanic" = "darkorange",
                    "Percent Clinton" = "blue",
                    "Percent Asian" = "purple",
                    "Percent No HS Diploma" = "yellow",
                    "Percent HS Diploma"= "gold",
                    "Percent Some College" = "orange",
                    "Percent College Degree" = "darkorange",
                    "Percent Estimated Poverty" = "black",
                    "Percent Unemployed" = "gray",
                    "Percent Home Ownership" = "purple",
                    "Percent Multi-Unit Homes" = "pink")
    
    legend <- switch(input$var, 
                     "Percent Trump" = "% Trump",
                     "Percent White" = "% White",
                     "Percent Black" = "% Black",
                     "Percent Hispanic" = "% Hispanic",
                     "Percent Clinton" = "% Clinton",
                     "Percent Asian" = "% Asian",
                     "Percent No HS Diploma" = "% No HS Diploma",
                     "Percent HS Diploma"= "% HS Diploma",
                     "Percent Some College" = "% Some College",
                     "Percent College Degree" = "% College Degree",
                     "Percent Estimated Poverty" = "% Living in Poverty",
                     "Percent Unemployed" = "% Unemployed",
                     "Percent Home Ownership" = "% Home Ownership",
                     "Percent Multi-Unit Homes" = "% Multi-Unit Homes"
                     )
    
    percent_map(data, color, legend, input$range[1], input$range[2])
  })
  
})
