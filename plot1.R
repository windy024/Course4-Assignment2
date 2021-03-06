#Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
#Using the base plotting system, make a plot 
#showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

#reading the files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

totalEmissions <- tapply(NEI$Emissions, NEI$year, sum)

barplot(totalEmissions, xlab = "Year", ylab = "Total Emission (ton)", 
        main = "Total Emission per year")

#THE PLOT SHOWS THAT IT HAS REDUCED OVER THE YEARS