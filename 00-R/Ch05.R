Arrive <- read.csv("Data/05_4m_arrivals.csv")
View(Arrive)
head(Arrive)
summary(Arrive)
table(Arrive$Status,Arrive$Airline)
tab <- table(Arrive$Status, Arrive$Airline)
rowSums(tab)
colSums(tab)
install.packages("gmodels")
require(gmodels)
CrossTable(Arrive$Status, Arrive$Airline)
#5.1 Car Theft
    # Read the file 
    Theft <- read.csv("Data/05_4m_car_theft.csv")
  
    # head shows the first 6 rows of a data frame
    head(Theft)   
    
    # New column Not_Stolen to acccount for the vehicles which are not stolen 
    with(Theft,
         head(data.frame(Model=Model,Stolen=Stolen,Not_Stolen=Made - Stolen))
    )
    
    # Creae a new % column 
    Theft$PctStolen <- 100 * Theft$Stolen/Theft$Made
    
    # Sort by top 10 models made 
    i <- order(Theft$Made, decreasing = TRUE)
    Sorted <- Theft[i,]
    Sorted[1:10,]
    
    #Plot the fist 10 models. Use 'Par' variable to control the foramtting of the plot 
    savedPar <- par(mar=c(4,11,1,1), las=1)   # make room for names
    
    with(Sorted,
         barplot(PctStolen[1:10], names=Model[1:10], horiz=TRUE, xlab="% Stolen")
    )
    
    # restore default plot parameters
    par(savedPar)         
    
    # Analytics - Airlines Arrivals 
    #Read 
    Arrive <- read.csv("Data/05_4m_arrivals.csv")
    
    #Count of rows and columns 
    dim(Arrive)
    
    #A few top rows
    head(Arrive)
    
    #A summary of the large file 
    summary(Arrive)
    
    #Create 2*2 Table with specific varialbes 
    table(Arrive$Status, Arrive$Airline)
    
    #Save the table in a variable for manipulation using RowSums and ColSums 
    tab <- table(Arrive$Status, Arrive$Airline)
    rowSums(tab)
    
    # A package to find % 
    install.packages("gmodels") 
    
    
    
    