# SunscreenProject

# Read the data (.csv) in from Excel downloaded from Qualtrics:

myData0305 <- read.csv("~/Desktop/Thesis & Related Items/R Stuff/ThesisData03122019.csv")

# We want to skip the firs two lines of Qualtrics provided metadata:
myData <- read.csv(paste("~/Desktop/Thesis & Related Items/R Stuff/ThesisData03122019.csv"), skip=2)

# Next we rename the columns to work with easily:
names(myData) <- c("StartDate", "EndDate", "IPStatus", "Progress", "DurationSec", "Finished", "RecDate", "ResponseID", "DistChannel", "UserLang", "WouldBuy", "Q1", "Q2", "Q3", "Q4", "Q5", "Q6", "Q7", "Q8", "Q9", "Q10", "Q11", "Q12", "Q13", "Q14", "Q15", "Q16", "Q17", "Q18", "Q19", "Q20", "Q21", "Q22", "Q23", "Q24", "Q25", "PriorKnowledge", "Gender", "YearBorn", "ZipCode", "Income", "Race", "Education", "Citizen", "Q34", "Q35", "Q36")

# We change the teirs of education into numerical ranks to work with easily:
myData$Education <- ifelse(myData$Education =="Less than high school diploma", 1,
                           ifelse(myData$Education =="High school degree or equivalent (e.g. GED)", 2,
                                  ifelse(myData$Education =="Some college, no degree", 3,
                                         ifelse(myData$Education =="Associate degree (e.g. AA, AS)", 4,
                                                ifelse(myData$Education =="Bachelor’s degree (e.g. BA, BS)", 5,
                                                       ifelse(myData$Education =="Master’s degree (e.g. MA, MS, MEd)", 6,
                                                              ifelse(myData$Education =="Professional degree (e.g. MD, DDS, DVM)", 7,
                                                                     ifelse(myData$Education =="Doctorate (e.g. PhD, EdD)", 8, 'FAIL'
                                                                     ))))))))

# And again for income tiers:
myData$Income <- ifelse(myData$Income =="Less than $10,000", 1,
                        ifelse(myData$Income =="$10,000 - $24,999", 2, 
                               ifelse(myData$Income =="$25,000 - $49,999", 3, 
                                      ifelse(myData$Income =="$50,000 - $74,999", 4,
                                             ifelse(myData$Income =="$75,000 - $99,999", 5,
                                                    ifelse(myData$Income =="$100,000 - $124,999", 6,
                                                           ifelse(myData$Income =="$125,000 - $149,999", 7, 
                                                                  ifelse(myData$Income =="$150,000 - $174,999", 8,
                                                                         ifelse(myData$Income =="$175,000 – $199,999", 9,
                                                                                ifelse(myData$Income =="$200,000 and higher", 10, 'FAIL'
                                                                                ))))))))))

# To change unfinished survey repsonses into NA values, and then omit those values:
q2price = gsub("$", "", as.character(myData$Q2), fixed=T)
tmp = unlist(lapply(strsplit(q2price, ","), function(x) max(as.numeric(x))))
tmp = ifelse(is.infinite(tmp), NA, tmp)
myData$Q2 = tmp
myData_sub = na.omit(myData)

# Because our suvrey has incorporated the use of Likert-scale survey questions, we want to change those responses into numerical values to work with easily:
code_resp <- function(q) {
  if(q == 'Strongly Agree')
    out = 7
  else if (q == 'Agree')
    out = 6
  else if (q == 'Somewhat Agree')
    out = 5
  else if (q == 'Neither agree nor disagree')
    out = 4
  else if (q == 'Somewhat Disagree')
    out = 3
  else if (q == 'Disagree')
    out = 2
  else if (q == 'Strongly Disagree')
    out = 1
  else 
    out = NA
  return(out)}

code_resp(myData_sub$Q5)
