#Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? 
#Use the base plotting system to make a plot answering this question.

#reading the files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# reading and subsetting data
balt <- subset(NEI, fips == "24510")

# summing emissions per year
totalEmissions <- tapply(balt$Emissions, balt$year, sum)

# plotting
barplot(totalEmissions, xlab = "Year", ylab = "Total Emission (ton)", 
        main = "Total Emission per year in Baltimore")

#THE PLOT SHOWS THAT IT IS FLUCTUATING
