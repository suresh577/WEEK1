#vectors
exercise 1:
  
  > u <- 4
  > v <- 8
  > addition_result <- u + v
  > subtraction_result <- u - v
  > multiplication_result <- u * v
  > division_result <- u / v
  > power_result <- u ^ v
  > addition_result
  [1] 12
  > subtraction_result
  [1] -4
  > multiplication_result
  [1] 32
  > division_result
  [1] 0.5
  > power_result
  [1] 65536
  
  exercise 2:
    
    >u <- c(4, 5, 6)
  >v <- c(1, 2, 3)
  >u + v
  [1] 5 7 9
  >u - v
  [1] 3 3 3
  >u * v
  [1]  4 10 18
  >u / v
  [1] 4.0 2.5 2.0
  >u**v
  [1]   4  25 216
  
  exercise 3:
    
    >u <- c(8, 9, 10)
  >v <- c(1, 2, 3)
  >w <- (2 * u + v) / 10
  >w
  [1] 1.7 2.0 2.3
  >w <- 2 * u
  >w <- w + v
  >w <- w / 10
  >w
  [1] 1.7 2.0 2.3
  
  Exercise 4
  
  part a:
    
    >u<- c(1,2,3)
  >v<- c(4,5,6)
  >w<- u + v
  >w <- w / 2
  >w <- w + u
  >w
  [1] 3.5 5.5 7.5
  part b:
    
    >w1 <- u^3
  >w2 <- u - v
  >w <- w1 / w2
  >w
  [1] -0.3333333 -2.6666667 -9.0000000
  
  #data frames
  
  Exercise 1:
    
    > data <- data.frame(
      +     Student_Name = c("std1", "std2", "std3", "std4"),
      +     Age = c(15,16,17,18),
      +     Weight = c(50, 60, 70, 80),
      +     Height = c(170, 175, 160, 179),
      +     Gender = c("Male", "Female", "Male", "Female")
      + )
  > data$Gender <- ifelse(data$Gender == "Male", "Female", "Male")
  > print(data)
  Student_Name    Age     Weight    Height   Gender
  1         std1      15     50         170      Female
  2         std2      16     60         175      Male
  3         std3      17     70         160      Female
  4         std4      18     80         179      Male
  
  Exercise 2:
    
    > data <- data.frame(
      +     Name = c("Ram", "Siya", "Shiva", "Isha"),
      +     Age = c(20, 22, 21, 23),
      +     Weight = c(70, 65, 75, 68),
      +     Height = c(170, 165, 180, 172),
      +     Gender = c("Male", "Female", "Male", "Female")
      + )
  > print(data)
  
  Name Age Weight Height Gender
  1   Ram  20     70    170   Male
  2  Siya  22     65    165 Female
  3 Shiva  21     75    180   Male
  4  Isha  23     68    172 Female
  
  > new_data <- data.frame(
    +     Name = c("Ram", "Siya", "Shiva", "Isha"),
    +     Working = c("Yes", "No", "Yes", "No"),
    +     stringsAsFactors = FALSE
    + )
  > print(new_data)
  Name   Working
  1   Ram     Yes
  2  Siya      No
  3 Shiva     Yes
  4  Isha      No
  
  > combined_data <- cbind(data, new_data)
  > combined_data
  Name Age Weight Height Gender  Name Working
  1   Ram  20     70    170   Male   Ram     Yes
  2  Siya  22     65    165 Female  Siya      No
  3 Shiva  21     75    180   Male Shiva     Yes
  4  Isha  23     68    172 Female  Isha      No
  > cat("\nDimensions of the combined data frame:\n")
  Dimensions of the combined data frame:
    > dim(combined_data)
  [1] 4 7
  > cat("\nClass of data in each column:\n")
  
  Class of data in each column:
    > cat("\nClass of data in each column:\n")
  
  Class of data in each column:
    > print(sapply(combined_data, class))
  
  Name         Age      Weight      Height      Gender        Name     Working 
  "character"   "numeric"   "numeric"   "numeric" "character" "character" "character" 
  
  
  Exercise 3:
    
    > class(state.center)
  [1] "list"
  > data.state <- as.data.frame(state.center)
  
  Exercise 4:
    
    > names <- c("std1", "std2", "std3", "std4")
  > ages <- c(10, 11, 12, 13)
  > scores <- c(60, 80, 90, 100)
  > N <- data.frame(Name = names, Age = ages, Score = scores)
  > N <- N[order(N$Name), ]
  > N
  
  Name Age Score
  1 std1  10    60
  2 std2  11    80
  3 std3  12    90
  4 std4  13   100
  
  Exercise 5:
    
    > data.state <- as.data.frame(state.center)
  > matrix.data <- matrix(1:40, nrow = 10, ncol = 4)
  > df <- as.data.frame(matrix.data)
  > colnames(df) <- paste("variable_", 1:ncol(df))
  > rownames(df) <- paste("id_", 1:nrow(df))
  > df
  variable_ 1 variable_ 2 variable_ 3 variable_ 4
  id_ 1            1          11          21          31
  id_ 2            2          12          22          32
  id_ 3            3          13          23          33
  id_ 4            4          14          24          34
  id_ 5            5          15          25          35
  id_ 6            6          16          26          36
  id_ 7            7          17          27          37
  id_ 8            8          18          28          38
  id_ 9            9          19          29          39
  id_ 10          10          20          30          40
  
  Exercise 6:
    
    > class(VADeaths)
  [1] "matrix" "array" 
  > df <- data.frame(VADeaths)
  > df$Total <- rowSums(df)
  > df <- df[,c(5,1,2,3,4)]
  > df
  Total Rural.Male Rural.Female Urban.Male Urban.Female
  50-54  44.2       11.7          8.7       15.4          8.4
  55-59  67.7       18.1         11.7       24.3         13.6
  60-64 103.5       26.9         20.3       37.0         19.3
  65-69 161.6       41.0         30.9       54.6         35.1
  70-74 241.4       66.0         54.3       71.1         50.0
  
  Exercise 7:
    
    > class(state.x77)
  [1] "matrix" "array" 
  > df2 <- data.frame(state.x77)
  
  > nrow(df2[df2$Income < 4300,])
  [1] 20
  
  > row.names(df2[which.max(df2$Income),])
  [1] "Alaska"
  
  exercise 8:
    
    > swiss_df<-swiss[c(1, 2, 3, 10, 11, 12, 13),c("Examination", "Education", "Infant.Mortality")]
  > swiss_df["Sarine","Infant.Mortality"]<-NA
  > swiss_df["Total",]<-colSums(swiss_df)
  > swiss_df$Proportion<- swiss_df$Examination/swiss_df["Total", "Examination"]
  > swiss_df
  Examination Education Infant.Mortality Proportion
  Courtelary            15        12             22.2 0.16483516
  Delemont               6         9             22.2 0.06593407
  Franches-Mnt           5         5             20.2 0.05494505
  Sarine                16        13               NA 0.17582418
  Veveyse               14         6             24.5 0.15384615
  Aigle                 21        12             16.5 0.23076923
  Aubonne               14         7             19.1 0.15384615
  Total                 91        64               NA 1.00000000
  
  exercise 9:
    
    >state_data<-data.frame(
      +     abb=state.abb,
      +     area=state.area,
      +     division=state.division,
      +     name=state.name,
      +     region=state.region,
      +     row.names=state.name
      + )
  > colnames(state_data)<-gsub("^.*\\.", "",colnames(state_data))
  > state_data
  abb   area           division           name        region
  Alabama         AL  51609 East South Central        Alabama         South
  Alaska          AK 589757            Pacific         Alaska          West
  Arizona         AZ 113909           Mountain        Arizona          West
  Arkansas        AR  53104 West South Central       Arkansas         South
  California      CA 158693            Pacific     California          West
  Colorado        CO 104247           Mountain       Colorado          West
  Connecticut     CT   5009        New England    Connecticut     Northeast
  Delaware        DE   2057     South Atlantic       Delaware         South
  Florida         FL  58560     South Atlantic        Florida         South
  Georgia         GA  58876     South Atlantic        Georgia         South
  Hawaii          HI   6450            Pacific         Hawaii          West
  Idaho           ID  83557           Mountain          Idaho          West
  Illinois        IL  56400 East North Central       Illinois North Central
  Indiana         IN  36291 East North Central        Indiana North Central
  Iowa            IA  56290 West North Central           Iowa North Central
  Kansas          KS  82264 West North Central         Kansas North Central
  Kentucky        KY  40395 East South Central       Kentucky         South
  Louisiana       LA  48523 West South Central      Louisiana         South
  Maine           ME  33215        New England          Maine     Northeast
  Maryland        MD  10577     South Atlantic       Maryland         South
  Massachusetts   MA   8257        New England  Massachusetts     Northeast
  Michigan        MI  58216 East North Central       Michigan North Central
  Minnesota       MN  84068 West North Central      Minnesota North Central
  Mississippi     MS  47716 East South Central    Mississippi         South
  Missouri        MO  69686 West North Central       Missouri North Central
  Montana         MT 147138           Mountain        Montana          West
  Nebraska        NE  77227 West North Central       Nebraska North Central
  Nevada          NV 110540           Mountain         Nevada          West
  New Hampshire   NH   9304        New England  New Hampshire     Northeast
  New Jersey      NJ   7836    Middle Atlantic     New Jersey     Northeast
  New Mexico      NM 121666           Mountain     New Mexico          West
  New York        NY  49576    Middle Atlantic       New York     Northeast
  North Carolina  NC  52586     South Atlantic North Carolina         South
  North Dakota    ND  70665 West North Central   North Dakota North Central
  Ohio            OH  41222 East North Central           Ohio North Central
  Oklahoma        OK  69919 West South Central       Oklahoma         South
  Oregon          OR  96981            Pacific         Oregon          West
  Pennsylvania    PA  45333    Middle Atlantic   Pennsylvania     Northeast
  Rhode Island    RI   1214        New England   Rhode Island     Northeast
  South Carolina  SC  31055     South Atlantic South Carolina         South
  South Dakota    SD  77047 West North Central   South Dakota North Central
  Tennessee       TN  42244 East South Central      Tennessee         South
  Texas           TX 267339 West South Central          Texas         South
  Utah            UT  84916           Mountain           Utah          West
  Vermont         VT   9609        New England        Vermont     Northeast
  Virginia        VA  40815     South Atlantic       Virginia         South
  Washington      WA  68192            Pacific     Washington          West
  West Virginia   WV  24181     South Atlantic  West Virginia         South
  Wisconsin       WI  56154 East North Central      Wisconsin North Central
  Wyoming         WY  97914           Mountain        Wyoming          West
  
  exercise 10:
    
    > combined_data <- cbind(state.x77, state_data)
  > combined_data <- combined_data[, !grepl("div", colnames(combined_data))]
  > 
    > variables_to_remove <- c("Life Exp", "HS Grad", "Frost", "abb", "area")
  > 
    > combined_data <- combined_data[, !colnames(combined_data) %in% variables_to_remove]
  > 
    > combined_data$Illiteracy_Level <- cut(combined_data$Illiteracy, breaks = c(0, 1, 2, Inf), labels = c("low", "some", "high"))
  > 
    > west_low_illiteracy <- combined_data[combined_data$region == "West" & combined_data$Illiteracy_Level == "low", ]
  > 
    > highest_income_state_west_low_illiteracy <- west_low_illiteracy[which.max(west_low_illiteracy$Income), "State"]
  > 
    > highest_income_west_low_illiteracy <- max(west_low_illiteracy$Income)
  > 
    > cat(highest_income_state_west_low_illiteracy)
  > cat(highest_income_west_low_illiteracy)
  5149
  
  
  
  
  