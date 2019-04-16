### Sunscreen Project

This project is presented by Chelsea Woodruff as the data and analysis side of her masters thesis project titled: An Assessment of Willingness to Pay for Coral-Safe Sunscreens.

This project has been implemented to assess and gauge interest in coral-safe sunscreen and to analyze the highest price consumers are willing to pay for this product. Recent studies show that most commerical sunscreens contain coral-toxic ingredients (Downs, 2016). While Hawaii and Key West, FL have banned products containing these ingredients, most consumers are not aware of this environemtnal issue. From this information, this project was born.

The data is from 348 respondents via survey from Qualtrics (survey creation website) which ask questions about the consumer's willingness to pay (WTP) for coral-safe sunscreen, and some Likert-scale questions to assess their environmental behaviors and attitudes. This section is important separately as it may determine a respondent's liklihood of purchasing coral-safe sunscreen at higher prices.

By following the instructions in each file, the steps of the project are recreatable.
Here are the files pertinent to the project:

### 1. Initial Data Processing: 
These is how we turn the Likert-scale questions into values 1-7 and turn tiers of Education and Income levels, etc. (from the Demographics) into numerical values or LOW, MODERATE, HIGH expressions. An example of this is turning questions with answers between "Strongly Agree" - "Strongly Disagree" into values of 1-7 to determine a survey-taker's Environmental Attitudes score.

### 2. Data Analysis: 
We begin to create models to examine interactions between the variables. In addition, examining boxplots to better understand the results. We end by running an anova of the resulting model.

### 3. Plots:
Some preliminary boxplots and graphs to examine relationships.

### 4. Data:
All csv files necessary for project development. The csv files are as follows:

-- RawDatafromQualtrics: 
This is a csv file containing the non-transformed data values of the respondents as initially downloaded from Qualtrics. Transforming the values must occur to work with the data for analysis purposes.

-- myData_sub:
This is a version of "cleaned up" data after we've transformed the data to be more useable. We did this by the methods as outlined within the Initial Data Processing file.



### Acknowledgements:
Downs, C. A., Kramarsky-Winter, E., Segal, R., Fauth, J., Knutson, S., Bronstein, O., … Loya, Y. (2016). Toxicopathological Effects of the Sunscreen UV Filter, Oxybenzone (Benzophenone-3), on Coral Planulae and Cultured Primary Cells and Its Environmental Contamination in Hawaii and the U.S. Virgin Islands. Archives of Environmental Contamination and Toxicology, 70(2), 265–288. https://doi.org/10.1007/s00244-015-0227-7