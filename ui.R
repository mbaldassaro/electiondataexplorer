#ui.R
source("helpers.R")
library(shiny)
counties <- readRDS("data/county.rds")
library(shinydashboard)
library(maps)
library(mapproj)

shinyUI(dashboardPage(skin="blue",
  dashboardHeader(title="2016 Election Data Explorer", titleWidth=250),
    dashboardSidebar(width=250,
      sidebarMenu(
          menuItem("Map", tabName="mappanel", icon=icon("map")))),
            dashboardBody(
              tabItems(
                tabItem(tabName="mappanel",
                    fluidRow(
                        column(width=12,
                            box(
                              selectInput("var", 
                                  label = "Choose a variable to display",
                                    choices = c("Percent Trump",
                                        "Percent Clinton",
                                        "Percent White", 
                                        "Percent Black",
                                        "Percent Hispanic",
                                        "Percent Asian",
                                        "Percent No HS Diploma",
                                        "Percent HS Diploma",
                                        "Percent Some College",
                                        "Percent College Degree",
                                        "Percent Estimated Poverty",
                                        "Percent Unemployed",
                                        "Percent Home Ownership",
                                        "Percent Multi-Unit Homes"
                                        ),
                                  selected = "Percent Trump"),
                                  sliderInput("range", 
                                    label = "Range of interest:",
                                        min = 0, max = 100, value = c(0, 100))
                                           ),
                                           plotOutput("map", width="100%")
                                    ))
                          )
                    ))
  ))


