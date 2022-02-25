# load all 10 csv files
data0 <- read.csv("./data/data-0.csv", header=TRUE);
data1 <- read.csv("./data/data-1.csv", header=TRUE);
data2 <- read.csv("./data/data-2.csv", header=TRUE);
data3 <- read.csv("./data/data-3.csv", header=TRUE);
data4 <- read.csv("./data/data-4.csv", header=TRUE);
data5 <- read.csv("./data/data-5.csv", header=TRUE);
data6 <- read.csv("./data/data-6.csv", header=TRUE);
data7 <- read.csv("./data/data-7.csv", header=TRUE);
data8 <- read.csv("./data/data-8.csv", header=TRUE);
data9 <- read.csv("./data/data-9.csv", header=TRUE);

# always going to be the same
year <- data0$year

grass0 <- data0$grass
grass_tall0 <- data0$grass_tall
grass_short0 <- data0$grass_short

grass1 <- data1$grass
grass_tall1 <- data1$grass_tall
grass_short1 <- data1$grass_short

grass2 <- data2$grass
grass_tall2 <- data2$grass_tall
grass_short2 <- data2$grass_short

grass3 <- data3$grass
grass_tall3 <- data3$grass_tall
grass_short3 <- data3$grass_short

grass4 <- data4$grass
grass_tall4 <- data4$grass_tall
grass_short4 <- data4$grass_short

grass5 <- data5$grass
grass_tall5 <- data5$grass_tall
grass_short5 <- data5$grass_short

grass6 <- data6$grass
grass_tall6 <- data6$grass_tall
grass_short6 <- data6$grass_short

grass7 <- data7$grass
grass_tall7 <- data7$grass_tall
grass_short7 <- data7$grass_short

grass8 <- data8$grass
grass_tall8 <- data8$grass_tall
grass_short8 <- data8$grass_short

grass9 <- data9$grass
grass_tall9 <- data9$grass_tall
grass_short9 <- data9$grass_short


deer0 <- data0$deer
deer_light0 <- data0$deer_light
deer_dark0 <- data0$deer_dark

deer1 <- data1$deer
deer_light1 <- data1$deer_light
deer_dark1 <- data1$deer_dark
deer2 <- data2$deer
deer_light2 <- data2$deer_light
deer_dark2 <- data2$deer_dark

deer3 <- data3$deer
deer_light3 <- data3$deer_light
deer_dark3 <- data3$deer_dark

deer4 <- data4$deer
deer_light4 <- data4$deer_light
deer_dark4 <- data4$deer_dark

deer5 <- data5$deer
deer_light5 <- data5$deer_light
deer_dark5 <- data5$deer_dark

deer6 <- data6$deer
deer_light6 <- data6$deer_light
deer_dark6 <- data6$deer_dark

deer7 <- data7$deer
deer_light7 <- data7$deer_light
deer_dark7 <- data7$deer_dark

deer8 <- data8$deer
deer_light8 <- data8$deer_light
deer_dark8 <- data8$deer_dark

deer9 <- data9$deer
deer_light9 <- data9$deer_light
deer_dark9 <- data9$deer_dark


wolf0 <- data0$wolf
wolf_normal0 <- data0$wolf_normal
wolf_fast0 <- data0$wolf_fast

wolf1 <- data1$wolf
wolf_normal1 <- data1$wolf_normal
wolf_fast1 <- data1$wolf_fast

wolf2 <- data2$wolf
wolf_normal2 <- data2$wolf_normal
wolf_fast2 <- data2$wolf_fast

wolf3 <- data3$wolf
wolf_normal3 <- data3$wolf_normal
wolf_fast3 <- data3$wolf_fast

wolf4 <- data4$wolf
wolf_normal4 <- data4$wolf_normal
wolf_fast4 <- data4$wolf_fast

wolf5 <- data5$wolf
wolf_normal5 <- data5$wolf_normal
wolf_fast5 <- data5$wolf_fast

wolf6 <- data6$wolf
wolf_normal6 <- data6$wolf_normal
wolf_fast6 <- data6$wolf_fast

wolf7 <- data7$wolf
wolf_normal7 <- data7$wolf_normal
wolf_fast7 <- data7$wolf_fast

wolf8 <- data8$wolf
wolf_normal8 <- data8$wolf_normal
wolf_fast8 <- data8$wolf_fast

wolf9 <- data9$wolf
wolf_normal9 <- data9$wolf_normal
wolf_fast9 <- data9$wolf_fast

total0 <- data0$total
total1 <- data1$total
total2 <- data2$total
total3 <- data3$total
total4 <- data4$total
total5 <- data5$total
total6 <- data6$total
total7 <- data7$total
total8 <- data8$total
total9 <- data9$total

plot(year, total0, type="o", main = "Total Population Growth Over Time", xlab = "Time", ylab = "Population", col = "#0077ff", lty = 0)
lines(year, total1, lty = 1, col = "#fff000")
lines(year, total2, lty = 2, col = "#ff0f00")
lines(year, total3, lty = 3, col = "#ff00f0")
lines(year, total4, lty = 4, col = "#ff000f")
lines(year, total5, lty = 5, col = "#f00000")
lines(year, total6, lty = 6, col = "#0f0000")
lines(year, total7, lty = 7, col = "#00f000")
lines(year, total8, lty = 8, col = "#000f00")
lines(year, total9, lty = 9, col = "#0000f0")

legend(
    0, 1e+07, 
    legend = c("Total 1", "Total 2", "Total 3", "Total 4", "Total 5", "Total 6", "Total 7", "Total 8", "Total 9", "Total 10"), 
    col = c("#0077ff", "#fff000", "#ff0f00", "#ff00f0", "#ff000f", "#f00000", "#0f0000", "#00f000", "#000f00", "#0000f0"),
    pch = c("o", "*", "+"),
    lty = 0:9,
    ncol = 1
)


plot(year, grass0, type="o", main = "Grass Population Growth Over Time", xlab = "Time", ylab = "Population", col = "#0077ff", lty = 0)
lines(year, grass1, lty = 1, col = "#fff000")
lines(year, grass2, lty = 2, col = "#ff0f00")
lines(year, grass3, lty = 3, col = "#ff00f0")
lines(year, grass4, lty = 4, col = "#ff000f")
lines(year, grass5, lty = 5, col = "#f00000")
lines(year, grass6, lty = 6, col = "#0f0000")
lines(year, grass7, lty = 7, col = "#00f000")
lines(year, grass8, lty = 8, col = "#000f00")
lines(year, grass9, lty = 9, col = "#0000f0")

legend(
    0, 1e+07, 
    legend = c("Grass 1", "Grass 2", "Grass 3", "Grass 4", "Grass 5", "Grass 6", "Grass 7", "Grass 8", "Grass 9", "Grass 10"), 
    col = c("#0077ff", "#fff000", "#ff0f00", "#ff00f0", "#ff000f", "#f00000", "#0f0000", "#00f000", "#000f00", "#0000f0"),
    pch = c("o", "*", "+"),
    lty = 0:9,
)


plot(year, deer0, type="o", main = "Deer Population Growth Over Time", xlab = "Time", ylab = "Population", col = "#0077ff", lty = 0)
lines(year, deer1, lty = 1, col = "#fff000")
lines(year, deer2, lty = 2, col = "#ff0f00")
lines(year, deer3, lty = 3, col = "#ff00f0")
lines(year, deer4, lty = 4, col = "#ff000f")
lines(year, deer5, lty = 5, col = "#f00000")
lines(year, deer6, lty = 6, col = "#0f0000")
lines(year, deer7, lty = 7, col = "#00f000")
lines(year, deer8, lty = 8, col = "#000f00")
lines(year, deer9, lty = 9, col = "#0000f0")

legend(
    0, 35000, 
    legend = c("Deer 1", "Deer 2", "Deer 3", "Deer 4", "Deer 5", "Deer 6", "Deer 7", "Deer 8", "Deer 9", "Deer 10"), 
    col = c("#0077ff", "#fff000", "#ff0f00", "#ff00f0", "#ff000f", "#f00000", "#0f0000", "#00f000", "#000f00", "#0000f0"),
    pch = c("o", "*", "+"),
    lty = 0:9,
)


plot(year, wolf0, type="o", main = "Wolf Population Growth Over Time", xlab = "Time", ylab = "Population", col = "#0077ff", lty = 0)
lines(year, wolf1, lty = 1, col = "#fff000")
lines(year, wolf2, lty = 2, col = "#ff0f00")
lines(year, wolf3, lty = 3, col = "#ff00f0")
lines(year, wolf4, lty = 4, col = "#ff000f")
lines(year, wolf5, lty = 5, col = "#f00000")
lines(year, wolf6, lty = 6, col = "#0f0000")
lines(year, wolf7, lty = 7, col = "#00f000")
lines(year, wolf8, lty = 8, col = "#000f00")
lines(year, wolf9, lty = 9, col = "#0000f0")

legend(
    0, 750, 
    legend = c("Wolf 1", "Wolf 2", "Wolf 3", "Wolf 4", "Wolf 5", "Wolf 6", "Wolf 7", "Wolf 8", "Wolf 9", "Wolf 10"), 
    col = c("#0077ff", "#fff000", "#ff0f00", "#ff00f0", "#ff000f", "#f00000", "#0f0000", "#00f000", "#000f00", "#0000f0"),
    pch = c("o", "*", "+"),
    lty = 0:9,
)

# i wonder if there's a better way of doing this... oh well, too late
grass_short_avg <- c(
    mean(c(
        grass_short0[1],
        grass_short1[1],
        grass_short2[1],
        grass_short3[1],
        grass_short4[1],
        grass_short5[1],
        grass_short6[1],
        grass_short7[1],
        grass_short8[1],
        grass_short9[1]
    )),
    mean(c(
        grass_short0[2],
        grass_short1[2],
        grass_short2[2],
        grass_short3[2],
        grass_short4[2],
        grass_short5[2],
        grass_short6[2],
        grass_short7[2],
        grass_short8[2],
        grass_short9[2]
    )),
    mean(c(
        grass_short0[3],
        grass_short1[3],
        grass_short2[3],
        grass_short3[3],
        grass_short4[3],
        grass_short5[3],
        grass_short6[3],
        grass_short7[3],
        grass_short8[3],
        grass_short9[3]
    )),
    mean(c(
        grass_short0[4],
        grass_short1[4],
        grass_short2[4],
        grass_short3[4],
        grass_short4[4],
        grass_short5[4],
        grass_short6[4],
        grass_short7[4],
        grass_short8[4],
        grass_short9[4]
    )),
    mean(c(
        grass_short0[5],
        grass_short1[5],
        grass_short2[5],
        grass_short3[5],
        grass_short4[5],
        grass_short5[5],
        grass_short6[5],
        grass_short7[5],
        grass_short8[5],
        grass_short9[5]
    )),
    mean(c(
        grass_short0[6],
        grass_short1[6],
        grass_short2[6],
        grass_short3[6],
        grass_short4[6],
        grass_short5[6],
        grass_short6[6],
        grass_short7[6],
        grass_short8[6],
        grass_short9[6]
    )),
    mean(c(
        grass_short0[7],
        grass_short1[7],
        grass_short2[7],
        grass_short3[7],
        grass_short4[7],
        grass_short5[7],
        grass_short6[7],
        grass_short7[7],
        grass_short8[7],
        grass_short9[7]
    )),
    mean(c(
        grass_short0[8],
        grass_short1[8],
        grass_short2[8],
        grass_short3[8],
        grass_short4[8],
        grass_short5[8],
        grass_short6[8],
        grass_short7[8],
        grass_short8[8],
        grass_short9[8]
    )),
    mean(c(
        grass_short0[9],
        grass_short1[9],
        grass_short2[9],
        grass_short3[9],
        grass_short4[9],
        grass_short5[9],
        grass_short6[9],
        grass_short7[9],
        grass_short8[9],
        grass_short9[9]
    )),
    mean(c(
        grass_short0[10],
        grass_short1[10],
        grass_short2[10],
        grass_short3[10],
        grass_short4[10],
        grass_short5[10],
        grass_short6[10],
        grass_short7[10],
        grass_short8[10],
        grass_short9[10]
    )),
    mean(c(
        grass_short0[11],
        grass_short1[11],
        grass_short2[11],
        grass_short3[11],
        grass_short4[11],
        grass_short5[11],
        grass_short6[11],
        grass_short7[11],
        grass_short8[11],
        grass_short9[11]
    )),
    mean(c(
        grass_short0[12],
        grass_short1[12],
        grass_short2[12],
        grass_short3[12],
        grass_short4[12],
        grass_short5[12],
        grass_short6[12],
        grass_short7[12],
        grass_short8[12],
        grass_short9[12]
    )),
    
    mean(c(
        grass_short0[13],
        grass_short1[13],
        grass_short2[13],
        grass_short3[13],
        grass_short4[13],
        grass_short5[13],
        grass_short6[13],
        grass_short7[13],
        grass_short8[13],
        grass_short9[13]
    )),
    mean(c(
        grass_short0[14],
        grass_short1[14],
        grass_short2[14],
        grass_short3[14],
        grass_short4[14],
        grass_short5[14],
        grass_short6[14],
        grass_short7[14],
        grass_short8[14],
        grass_short9[14]
    )),
    mean(c(
        grass_short0[15],
        grass_short1[15],
        grass_short2[15],
        grass_short3[15],
        grass_short4[15],
        grass_short5[15],
        grass_short6[15],
        grass_short7[15],
        grass_short8[15],
        grass_short9[15]
    )),
    mean(c(
        grass_short0[16],
        grass_short1[16],
        grass_short2[16],
        grass_short3[16],
        grass_short4[16],
        grass_short5[16],
        grass_short6[16],
        grass_short7[16],
        grass_short8[16],
        grass_short9[16]
    )),
    mean(c(
        grass_short0[17],
        grass_short1[17],
        grass_short2[17],
        grass_short3[17],
        grass_short4[17],
        grass_short5[17],
        grass_short6[17],
        grass_short7[17],
        grass_short8[17],
        grass_short9[17]
    )),
    mean(c(
        grass_short0[18],
        grass_short1[18],
        grass_short2[18],
        grass_short3[18],
        grass_short4[18],
        grass_short5[18],
        grass_short6[18],
        grass_short7[18],
        grass_short8[18],
        grass_short9[18]
    )),
    mean(c(
        grass_short0[19],
        grass_short1[19],
        grass_short2[19],
        grass_short3[19],
        grass_short4[19],
        grass_short5[19],
        grass_short6[19],
        grass_short7[19],
        grass_short8[19],
        grass_short9[19]
    )),
    mean(c(
        grass_short0[20],
        grass_short1[20],
        grass_short2[20],
        grass_short3[20],
        grass_short4[20],
        grass_short5[20],
        grass_short6[20],
        grass_short7[20],
        grass_short8[20],
        grass_short9[20]
    )),
    mean(c(
        grass_short0[21],
        grass_short1[21],
        grass_short2[21],
        grass_short3[21],
        grass_short4[21],
        grass_short5[21],
        grass_short6[21],
        grass_short7[21],
        grass_short8[21],
        grass_short9[21]
    )),
    mean(c(
        grass_short0[22],
        grass_short1[22],
        grass_short2[22],
        grass_short3[22],
        grass_short4[22],
        grass_short5[22],
        grass_short6[22],
        grass_short7[22],
        grass_short8[22],
        grass_short9[22]
    )),
    mean(c(
        grass_short0[23],
        grass_short1[23],
        grass_short2[23],
        grass_short3[23],
        grass_short4[23],
        grass_short5[23],
        grass_short6[23],
        grass_short7[23],
        grass_short8[23],
        grass_short9[23]
    )),
    
    mean(c(
        grass_short0[24],
        grass_short1[24],
        grass_short2[24],
        grass_short3[24],
        grass_short4[24],
        grass_short5[24],
        grass_short6[24],
        grass_short7[24],
        grass_short8[24],
        grass_short9[24]
    )),
    mean(c(
        grass_short0[25],
        grass_short1[25],
        grass_short2[25],
        grass_short3[25],
        grass_short4[25],
        grass_short5[25],
        grass_short6[25],
        grass_short7[25],
        grass_short8[25],
        grass_short9[25]
    )),
    mean(c(
        grass_short0[26],
        grass_short1[26],
        grass_short2[26],
        grass_short3[26],
        grass_short4[26],
        grass_short5[26],
        grass_short6[26],
        grass_short7[26],
        grass_short8[26],
        grass_short9[26]
    ))
)


grass_tall_avg <- c(
    mean(c(
        grass_tall0[1],
        grass_tall1[1],
        grass_tall2[1],
        grass_tall3[1],
        grass_tall4[1],
        grass_tall5[1],
        grass_tall6[1],
        grass_tall7[1],
        grass_tall8[1],
        grass_tall9[1]
    )),
    mean(c(
        grass_tall0[2],
        grass_tall1[2],
        grass_tall2[2],
        grass_tall3[2],
        grass_tall4[2],
        grass_tall5[2],
        grass_tall6[2],
        grass_tall7[2],
        grass_tall8[2],
        grass_tall9[2]
    )),
    mean(c(
        grass_tall0[3],
        grass_tall1[3],
        grass_tall2[3],
        grass_tall3[3],
        grass_tall4[3],
        grass_tall5[3],
        grass_tall6[3],
        grass_tall7[3],
        grass_tall8[3],
        grass_tall9[3]
    )),
    mean(c(
        grass_tall0[4],
        grass_tall1[4],
        grass_tall2[4],
        grass_tall3[4],
        grass_tall4[4],
        grass_tall5[4],
        grass_tall6[4],
        grass_tall7[4],
        grass_tall8[4],
        grass_tall9[4]
    )),
    mean(c(
        grass_tall0[5],
        grass_tall1[5],
        grass_tall2[5],
        grass_tall3[5],
        grass_tall4[5],
        grass_tall5[5],
        grass_tall6[5],
        grass_tall7[5],
        grass_tall8[5],
        grass_tall9[5]
    )),
    mean(c(
        grass_tall0[6],
        grass_tall1[6],
        grass_tall2[6],
        grass_tall3[6],
        grass_tall4[6],
        grass_tall5[6],
        grass_tall6[6],
        grass_tall7[6],
        grass_tall8[6],
        grass_tall9[6]
    )),
    mean(c(
        grass_tall0[7],
        grass_tall1[7],
        grass_tall2[7],
        grass_tall3[7],
        grass_tall4[7],
        grass_tall5[7],
        grass_tall6[7],
        grass_tall7[7],
        grass_tall8[7],
        grass_tall9[7]
    )),
    mean(c(
        grass_tall0[8],
        grass_tall1[8],
        grass_tall2[8],
        grass_tall3[8],
        grass_tall4[8],
        grass_tall5[8],
        grass_tall6[8],
        grass_tall7[8],
        grass_tall8[8],
        grass_tall9[8]
    )),
    mean(c(
        grass_tall0[9],
        grass_tall1[9],
        grass_tall2[9],
        grass_tall3[9],
        grass_tall4[9],
        grass_tall5[9],
        grass_tall6[9],
        grass_tall7[9],
        grass_tall8[9],
        grass_tall9[9]
    )),
    mean(c(
        grass_tall0[10],
        grass_tall1[10],
        grass_tall2[10],
        grass_tall3[10],
        grass_tall4[10],
        grass_tall5[10],
        grass_tall6[10],
        grass_tall7[10],
        grass_tall8[10],
        grass_tall9[10]
    )),
    mean(c(
        grass_tall0[11],
        grass_tall1[11],
        grass_tall2[11],
        grass_tall3[11],
        grass_tall4[11],
        grass_tall5[11],
        grass_tall6[11],
        grass_tall7[11],
        grass_tall8[11],
        grass_tall9[11]
    )),
    mean(c(
        grass_tall0[12],
        grass_tall1[12],
        grass_tall2[12],
        grass_tall3[12],
        grass_tall4[12],
        grass_tall5[12],
        grass_tall6[12],
        grass_tall7[12],
        grass_tall8[12],
        grass_tall9[12]
    )),
    
    mean(c(
        grass_tall0[13],
        grass_tall1[13],
        grass_tall2[13],
        grass_tall3[13],
        grass_tall4[13],
        grass_tall5[13],
        grass_tall6[13],
        grass_tall7[13],
        grass_tall8[13],
        grass_tall9[13]
    )),
    mean(c(
        grass_tall0[14],
        grass_tall1[14],
        grass_tall2[14],
        grass_tall3[14],
        grass_tall4[14],
        grass_tall5[14],
        grass_tall6[14],
        grass_tall7[14],
        grass_tall8[14],
        grass_tall9[14]
    )),
    mean(c(
        grass_tall0[15],
        grass_tall1[15],
        grass_tall2[15],
        grass_tall3[15],
        grass_tall4[15],
        grass_tall5[15],
        grass_tall6[15],
        grass_tall7[15],
        grass_tall8[15],
        grass_tall9[15]
    )),
    mean(c(
        grass_tall0[16],
        grass_tall1[16],
        grass_tall2[16],
        grass_tall3[16],
        grass_tall4[16],
        grass_tall5[16],
        grass_tall6[16],
        grass_tall7[16],
        grass_tall8[16],
        grass_tall9[16]
    )),
    mean(c(
        grass_tall0[17],
        grass_tall1[17],
        grass_tall2[17],
        grass_tall3[17],
        grass_tall4[17],
        grass_tall5[17],
        grass_tall6[17],
        grass_tall7[17],
        grass_tall8[17],
        grass_tall9[17]
    )),
    mean(c(
        grass_tall0[18],
        grass_tall1[18],
        grass_tall2[18],
        grass_tall3[18],
        grass_tall4[18],
        grass_tall5[18],
        grass_tall6[18],
        grass_tall7[18],
        grass_tall8[18],
        grass_tall9[18]
    )),
    mean(c(
        grass_tall0[19],
        grass_tall1[19],
        grass_tall2[19],
        grass_tall3[19],
        grass_tall4[19],
        grass_tall5[19],
        grass_tall6[19],
        grass_tall7[19],
        grass_tall8[19],
        grass_tall9[19]
    )),
    mean(c(
        grass_tall0[20],
        grass_tall1[20],
        grass_tall2[20],
        grass_tall3[20],
        grass_tall4[20],
        grass_tall5[20],
        grass_tall6[20],
        grass_tall7[20],
        grass_tall8[20],
        grass_tall9[20]
    )),
    mean(c(
        grass_tall0[21],
        grass_tall1[21],
        grass_tall2[21],
        grass_tall3[21],
        grass_tall4[21],
        grass_tall5[21],
        grass_tall6[21],
        grass_tall7[21],
        grass_tall8[21],
        grass_tall9[21]
    )),
    mean(c(
        grass_tall0[22],
        grass_tall1[22],
        grass_tall2[22],
        grass_tall3[22],
        grass_tall4[22],
        grass_tall5[22],
        grass_tall6[22],
        grass_tall7[22],
        grass_tall8[22],
        grass_tall9[22]
    )),
    mean(c(
        grass_tall0[23],
        grass_tall1[23],
        grass_tall2[23],
        grass_tall3[23],
        grass_tall4[23],
        grass_tall5[23],
        grass_tall6[23],
        grass_tall7[23],
        grass_tall8[23],
        grass_tall9[23]
    )),
    
    mean(c(
        grass_tall0[24],
        grass_tall1[24],
        grass_tall2[24],
        grass_tall3[24],
        grass_tall4[24],
        grass_tall5[24],
        grass_tall6[24],
        grass_tall7[24],
        grass_tall8[24],
        grass_tall9[24]
    )),
    mean(c(
        grass_tall0[25],
        grass_tall1[25],
        grass_tall2[25],
        grass_tall3[25],
        grass_tall4[25],
        grass_tall5[25],
        grass_tall6[25],
        grass_tall7[25],
        grass_tall8[25],
        grass_tall9[25]
    )),
    mean(c(
        grass_tall0[26],
        grass_tall1[26],
        grass_tall2[26],
        grass_tall3[26],
        grass_tall4[26],
        grass_tall5[26],
        grass_tall6[26],
        grass_tall7[26],
        grass_tall8[26],
        grass_tall9[26]
    ))
)

plot(year, grass_tall_avg, type="l", main = "Grass Population Growth Over Time (Average for each Phenotype)", xlab = "Time", ylab = "Population", col = "#0077ff", lty = 0)
lines(year, grass_tall_avg, lty = 1, col = "blue")
lines(year, grass_short_avg, lty = 2, col = "red")

legend(
    0, 6e+06, 
    legend = c("", "Average Tall Grass Population", "Average Short Grass Population"), 
    col = c("#0077ff", "blue", "red"),
    lty = 0:2,
)


deer_light_avg <- c(
    mean(c(
        deer_light0[1],
        deer_light1[1],
        deer_light2[1],
        deer_light3[1],
        deer_light4[1],
        deer_light5[1],
        deer_light6[1],
        deer_light7[1],
        deer_light8[1],
        deer_light9[1]
    )),
    mean(c(
        deer_light0[2],
        deer_light1[2],
        deer_light2[2],
        deer_light3[2],
        deer_light4[2],
        deer_light5[2],
        deer_light6[2],
        deer_light7[2],
        deer_light8[2],
        deer_light9[2]
    )),
    mean(c(
        deer_light0[3],
        deer_light1[3],
        deer_light2[3],
        deer_light3[3],
        deer_light4[3],
        deer_light5[3],
        deer_light6[3],
        deer_light7[3],
        deer_light8[3],
        deer_light9[3]
    )),
    mean(c(
        deer_light0[4],
        deer_light1[4],
        deer_light2[4],
        deer_light3[4],
        deer_light4[4],
        deer_light5[4],
        deer_light6[4],
        deer_light7[4],
        deer_light8[4],
        deer_light9[4]
    )),
    mean(c(
        deer_light0[5],
        deer_light1[5],
        deer_light2[5],
        deer_light3[5],
        deer_light4[5],
        deer_light5[5],
        deer_light6[5],
        deer_light7[5],
        deer_light8[5],
        deer_light9[5]
    )),
    mean(c(
        deer_light0[6],
        deer_light1[6],
        deer_light2[6],
        deer_light3[6],
        deer_light4[6],
        deer_light5[6],
        deer_light6[6],
        deer_light7[6],
        deer_light8[6],
        deer_light9[6]
    )),
    mean(c(
        deer_light0[7],
        deer_light1[7],
        deer_light2[7],
        deer_light3[7],
        deer_light4[7],
        deer_light5[7],
        deer_light6[7],
        deer_light7[7],
        deer_light8[7],
        deer_light9[7]
    )),
    mean(c(
        deer_light0[8],
        deer_light1[8],
        deer_light2[8],
        deer_light3[8],
        deer_light4[8],
        deer_light5[8],
        deer_light6[8],
        deer_light7[8],
        deer_light8[8],
        deer_light9[8]
    )),
    mean(c(
        deer_light0[9],
        deer_light1[9],
        deer_light2[9],
        deer_light3[9],
        deer_light4[9],
        deer_light5[9],
        deer_light6[9],
        deer_light7[9],
        deer_light8[9],
        deer_light9[9]
    )),
    mean(c(
        deer_light0[10],
        deer_light1[10],
        deer_light2[10],
        deer_light3[10],
        deer_light4[10],
        deer_light5[10],
        deer_light6[10],
        deer_light7[10],
        deer_light8[10],
        deer_light9[10]
    )),
    mean(c(
        deer_light0[11],
        deer_light1[11],
        deer_light2[11],
        deer_light3[11],
        deer_light4[11],
        deer_light5[11],
        deer_light6[11],
        deer_light7[11],
        deer_light8[11],
        deer_light9[11]
    )),
    mean(c(
        deer_light0[12],
        deer_light1[12],
        deer_light2[12],
        deer_light3[12],
        deer_light4[12],
        deer_light5[12],
        deer_light6[12],
        deer_light7[12],
        deer_light8[12],
        deer_light9[12]
    )),
    
    mean(c(
        deer_light0[13],
        deer_light1[13],
        deer_light2[13],
        deer_light3[13],
        deer_light4[13],
        deer_light5[13],
        deer_light6[13],
        deer_light7[13],
        deer_light8[13],
        deer_light9[13]
    )),
    mean(c(
        deer_light0[14],
        deer_light1[14],
        deer_light2[14],
        deer_light3[14],
        deer_light4[14],
        deer_light5[14],
        deer_light6[14],
        deer_light7[14],
        deer_light8[14],
        deer_light9[14]
    )),
    mean(c(
        deer_light0[15],
        deer_light1[15],
        deer_light2[15],
        deer_light3[15],
        deer_light4[15],
        deer_light5[15],
        deer_light6[15],
        deer_light7[15],
        deer_light8[15],
        deer_light9[15]
    )),
    mean(c(
        deer_light0[16],
        deer_light1[16],
        deer_light2[16],
        deer_light3[16],
        deer_light4[16],
        deer_light5[16],
        deer_light6[16],
        deer_light7[16],
        deer_light8[16],
        deer_light9[16]
    )),
    mean(c(
        deer_light0[17],
        deer_light1[17],
        deer_light2[17],
        deer_light3[17],
        deer_light4[17],
        deer_light5[17],
        deer_light6[17],
        deer_light7[17],
        deer_light8[17],
        deer_light9[17]
    )),
    mean(c(
        deer_light0[18],
        deer_light1[18],
        deer_light2[18],
        deer_light3[18],
        deer_light4[18],
        deer_light5[18],
        deer_light6[18],
        deer_light7[18],
        deer_light8[18],
        deer_light9[18]
    )),
    mean(c(
        deer_light0[19],
        deer_light1[19],
        deer_light2[19],
        deer_light3[19],
        deer_light4[19],
        deer_light5[19],
        deer_light6[19],
        deer_light7[19],
        deer_light8[19],
        deer_light9[19]
    )),
    mean(c(
        deer_light0[20],
        deer_light1[20],
        deer_light2[20],
        deer_light3[20],
        deer_light4[20],
        deer_light5[20],
        deer_light6[20],
        deer_light7[20],
        deer_light8[20],
        deer_light9[20]
    )),
    mean(c(
        deer_light0[21],
        deer_light1[21],
        deer_light2[21],
        deer_light3[21],
        deer_light4[21],
        deer_light5[21],
        deer_light6[21],
        deer_light7[21],
        deer_light8[21],
        deer_light9[21]
    )),
    mean(c(
        deer_light0[22],
        deer_light1[22],
        deer_light2[22],
        deer_light3[22],
        deer_light4[22],
        deer_light5[22],
        deer_light6[22],
        deer_light7[22],
        deer_light8[22],
        deer_light9[22]
    )),
    mean(c(
        deer_light0[23],
        deer_light1[23],
        deer_light2[23],
        deer_light3[23],
        deer_light4[23],
        deer_light5[23],
        deer_light6[23],
        deer_light7[23],
        deer_light8[23],
        deer_light9[23]
    )),
    
    mean(c(
        deer_light0[24],
        deer_light1[24],
        deer_light2[24],
        deer_light3[24],
        deer_light4[24],
        deer_light5[24],
        deer_light6[24],
        deer_light7[24],
        deer_light8[24],
        deer_light9[24]
    )),
    mean(c(
        deer_light0[25],
        deer_light1[25],
        deer_light2[25],
        deer_light3[25],
        deer_light4[25],
        deer_light5[25],
        deer_light6[25],
        deer_light7[25],
        deer_light8[25],
        deer_light9[25]
    )),
    mean(c(
        deer_light0[26],
        deer_light1[26],
        deer_light2[26],
        deer_light3[26],
        deer_light4[26],
        deer_light5[26],
        deer_light6[26],
        deer_light7[26],
        deer_light8[26],
        deer_light9[26]
    ))
)


deer_dark_avg <- c(
    mean(c(
        deer_dark0[1],
        deer_dark1[1],
        deer_dark2[1],
        deer_dark3[1],
        deer_dark4[1],
        deer_dark5[1],
        deer_dark6[1],
        deer_dark7[1],
        deer_dark8[1],
        deer_dark9[1]
    )),
    mean(c(
        deer_dark0[2],
        deer_dark1[2],
        deer_dark2[2],
        deer_dark3[2],
        deer_dark4[2],
        deer_dark5[2],
        deer_dark6[2],
        deer_dark7[2],
        deer_dark8[2],
        deer_dark9[2]
    )),
    mean(c(
        deer_dark0[3],
        deer_dark1[3],
        deer_dark2[3],
        deer_dark3[3],
        deer_dark4[3],
        deer_dark5[3],
        deer_dark6[3],
        deer_dark7[3],
        deer_dark8[3],
        deer_dark9[3]
    )),
    mean(c(
        deer_dark0[4],
        deer_dark1[4],
        deer_dark2[4],
        deer_dark3[4],
        deer_dark4[4],
        deer_dark5[4],
        deer_dark6[4],
        deer_dark7[4],
        deer_dark8[4],
        deer_dark9[4]
    )),
    mean(c(
        deer_dark0[5],
        deer_dark1[5],
        deer_dark2[5],
        deer_dark3[5],
        deer_dark4[5],
        deer_dark5[5],
        deer_dark6[5],
        deer_dark7[5],
        deer_dark8[5],
        deer_dark9[5]
    )),
    mean(c(
        deer_dark0[6],
        deer_dark1[6],
        deer_dark2[6],
        deer_dark3[6],
        deer_dark4[6],
        deer_dark5[6],
        deer_dark6[6],
        deer_dark7[6],
        deer_dark8[6],
        deer_dark9[6]
    )),
    mean(c(
        deer_dark0[7],
        deer_dark1[7],
        deer_dark2[7],
        deer_dark3[7],
        deer_dark4[7],
        deer_dark5[7],
        deer_dark6[7],
        deer_dark7[7],
        deer_dark8[7],
        deer_dark9[7]
    )),
    mean(c(
        deer_dark0[8],
        deer_dark1[8],
        deer_dark2[8],
        deer_dark3[8],
        deer_dark4[8],
        deer_dark5[8],
        deer_dark6[8],
        deer_dark7[8],
        deer_dark8[8],
        deer_dark9[8]
    )),
    mean(c(
        deer_dark0[9],
        deer_dark1[9],
        deer_dark2[9],
        deer_dark3[9],
        deer_dark4[9],
        deer_dark5[9],
        deer_dark6[9],
        deer_dark7[9],
        deer_dark8[9],
        deer_dark9[9]
    )),
    mean(c(
        deer_dark0[10],
        deer_dark1[10],
        deer_dark2[10],
        deer_dark3[10],
        deer_dark4[10],
        deer_dark5[10],
        deer_dark6[10],
        deer_dark7[10],
        deer_dark8[10],
        deer_dark9[10]
    )),
    mean(c(
        deer_dark0[11],
        deer_dark1[11],
        deer_dark2[11],
        deer_dark3[11],
        deer_dark4[11],
        deer_dark5[11],
        deer_dark6[11],
        deer_dark7[11],
        deer_dark8[11],
        deer_dark9[11]
    )),
    mean(c(
        deer_dark0[12],
        deer_dark1[12],
        deer_dark2[12],
        deer_dark3[12],
        deer_dark4[12],
        deer_dark5[12],
        deer_dark6[12],
        deer_dark7[12],
        deer_dark8[12],
        deer_dark9[12]
    )),
    
    mean(c(
        deer_dark0[13],
        deer_dark1[13],
        deer_dark2[13],
        deer_dark3[13],
        deer_dark4[13],
        deer_dark5[13],
        deer_dark6[13],
        deer_dark7[13],
        deer_dark8[13],
        deer_dark9[13]
    )),
    mean(c(
        deer_dark0[14],
        deer_dark1[14],
        deer_dark2[14],
        deer_dark3[14],
        deer_dark4[14],
        deer_dark5[14],
        deer_dark6[14],
        deer_dark7[14],
        deer_dark8[14],
        deer_dark9[14]
    )),
    mean(c(
        deer_dark0[15],
        deer_dark1[15],
        deer_dark2[15],
        deer_dark3[15],
        deer_dark4[15],
        deer_dark5[15],
        deer_dark6[15],
        deer_dark7[15],
        deer_dark8[15],
        deer_dark9[15]
    )),
    mean(c(
        deer_dark0[16],
        deer_dark1[16],
        deer_dark2[16],
        deer_dark3[16],
        deer_dark4[16],
        deer_dark5[16],
        deer_dark6[16],
        deer_dark7[16],
        deer_dark8[16],
        deer_dark9[16]
    )),
    mean(c(
        deer_dark0[17],
        deer_dark1[17],
        deer_dark2[17],
        deer_dark3[17],
        deer_dark4[17],
        deer_dark5[17],
        deer_dark6[17],
        deer_dark7[17],
        deer_dark8[17],
        deer_dark9[17]
    )),
    mean(c(
        deer_dark0[18],
        deer_dark1[18],
        deer_dark2[18],
        deer_dark3[18],
        deer_dark4[18],
        deer_dark5[18],
        deer_dark6[18],
        deer_dark7[18],
        deer_dark8[18],
        deer_dark9[18]
    )),
    mean(c(
        deer_dark0[19],
        deer_dark1[19],
        deer_dark2[19],
        deer_dark3[19],
        deer_dark4[19],
        deer_dark5[19],
        deer_dark6[19],
        deer_dark7[19],
        deer_dark8[19],
        deer_dark9[19]
    )),
    mean(c(
        deer_dark0[20],
        deer_dark1[20],
        deer_dark2[20],
        deer_dark3[20],
        deer_dark4[20],
        deer_dark5[20],
        deer_dark6[20],
        deer_dark7[20],
        deer_dark8[20],
        deer_dark9[20]
    )),
    mean(c(
        deer_dark0[21],
        deer_dark1[21],
        deer_dark2[21],
        deer_dark3[21],
        deer_dark4[21],
        deer_dark5[21],
        deer_dark6[21],
        deer_dark7[21],
        deer_dark8[21],
        deer_dark9[21]
    )),
    mean(c(
        deer_dark0[22],
        deer_dark1[22],
        deer_dark2[22],
        deer_dark3[22],
        deer_dark4[22],
        deer_dark5[22],
        deer_dark6[22],
        deer_dark7[22],
        deer_dark8[22],
        deer_dark9[22]
    )),
    mean(c(
        deer_dark0[23],
        deer_dark1[23],
        deer_dark2[23],
        deer_dark3[23],
        deer_dark4[23],
        deer_dark5[23],
        deer_dark6[23],
        deer_dark7[23],
        deer_dark8[23],
        deer_dark9[23]
    )),
    
    mean(c(
        deer_dark0[24],
        deer_dark1[24],
        deer_dark2[24],
        deer_dark3[24],
        deer_dark4[24],
        deer_dark5[24],
        deer_dark6[24],
        deer_dark7[24],
        deer_dark8[24],
        deer_dark9[24]
    )),
    mean(c(
        deer_dark0[25],
        deer_dark1[25],
        deer_dark2[25],
        deer_dark3[25],
        deer_dark4[25],
        deer_dark5[25],
        deer_dark6[25],
        deer_dark7[25],
        deer_dark8[25],
        deer_dark9[25]
    )),
    mean(c(
        deer_dark0[26],
        deer_dark1[26],
        deer_dark2[26],
        deer_dark3[26],
        deer_dark4[26],
        deer_dark5[26],
        deer_dark6[26],
        deer_dark7[26],
        deer_dark8[26],
        deer_dark9[26]
    ))
)

plot(year, deer_light_avg, type="l", main = "Deer Population Growth Over Time (Average for each Phenotype)", xlab = "Time", ylab = "Population", col = "#0077ff", lty = 0)
lines(year, deer_light_avg, lty = 1, col = "blue")
lines(year, deer_dark_avg, lty = 2, col = "red")

legend(
    0, 25000, 
    legend = c("", "Average Light Deer Population", "Average Dark Deer Population"), 
    col = c("#0077ff", "blue", "red"),
    lty = 0:2,
)


wolf_normal_avg <- c(
    mean(c(
        wolf_normal0[1],
        wolf_normal1[1],
        wolf_normal2[1],
        wolf_normal3[1],
        wolf_normal4[1],
        wolf_normal5[1],
        wolf_normal6[1],
        wolf_normal7[1],
        wolf_normal8[1],
        wolf_normal9[1]
    )),
    mean(c(
        wolf_normal0[2],
        wolf_normal1[2],
        wolf_normal2[2],
        wolf_normal3[2],
        wolf_normal4[2],
        wolf_normal5[2],
        wolf_normal6[2],
        wolf_normal7[2],
        wolf_normal8[2],
        wolf_normal9[2]
    )),
    mean(c(
        wolf_normal0[3],
        wolf_normal1[3],
        wolf_normal2[3],
        wolf_normal3[3],
        wolf_normal4[3],
        wolf_normal5[3],
        wolf_normal6[3],
        wolf_normal7[3],
        wolf_normal8[3],
        wolf_normal9[3]
    )),
    mean(c(
        wolf_normal0[4],
        wolf_normal1[4],
        wolf_normal2[4],
        wolf_normal3[4],
        wolf_normal4[4],
        wolf_normal5[4],
        wolf_normal6[4],
        wolf_normal7[4],
        wolf_normal8[4],
        wolf_normal9[4]
    )),
    mean(c(
        wolf_normal0[5],
        wolf_normal1[5],
        wolf_normal2[5],
        wolf_normal3[5],
        wolf_normal4[5],
        wolf_normal5[5],
        wolf_normal6[5],
        wolf_normal7[5],
        wolf_normal8[5],
        wolf_normal9[5]
    )),
    mean(c(
        wolf_normal0[6],
        wolf_normal1[6],
        wolf_normal2[6],
        wolf_normal3[6],
        wolf_normal4[6],
        wolf_normal5[6],
        wolf_normal6[6],
        wolf_normal7[6],
        wolf_normal8[6],
        wolf_normal9[6]
    )),
    mean(c(
        wolf_normal0[7],
        wolf_normal1[7],
        wolf_normal2[7],
        wolf_normal3[7],
        wolf_normal4[7],
        wolf_normal5[7],
        wolf_normal6[7],
        wolf_normal7[7],
        wolf_normal8[7],
        wolf_normal9[7]
    )),
    mean(c(
        wolf_normal0[8],
        wolf_normal1[8],
        wolf_normal2[8],
        wolf_normal3[8],
        wolf_normal4[8],
        wolf_normal5[8],
        wolf_normal6[8],
        wolf_normal7[8],
        wolf_normal8[8],
        wolf_normal9[8]
    )),
    mean(c(
        wolf_normal0[9],
        wolf_normal1[9],
        wolf_normal2[9],
        wolf_normal3[9],
        wolf_normal4[9],
        wolf_normal5[9],
        wolf_normal6[9],
        wolf_normal7[9],
        wolf_normal8[9],
        wolf_normal9[9]
    )),
    mean(c(
        wolf_normal0[10],
        wolf_normal1[10],
        wolf_normal2[10],
        wolf_normal3[10],
        wolf_normal4[10],
        wolf_normal5[10],
        wolf_normal6[10],
        wolf_normal7[10],
        wolf_normal8[10],
        wolf_normal9[10]
    )),
    mean(c(
        wolf_normal0[11],
        wolf_normal1[11],
        wolf_normal2[11],
        wolf_normal3[11],
        wolf_normal4[11],
        wolf_normal5[11],
        wolf_normal6[11],
        wolf_normal7[11],
        wolf_normal8[11],
        wolf_normal9[11]
    )),
    mean(c(
        wolf_normal0[12],
        wolf_normal1[12],
        wolf_normal2[12],
        wolf_normal3[12],
        wolf_normal4[12],
        wolf_normal5[12],
        wolf_normal6[12],
        wolf_normal7[12],
        wolf_normal8[12],
        wolf_normal9[12]
    )),
    
    mean(c(
        wolf_normal0[13],
        wolf_normal1[13],
        wolf_normal2[13],
        wolf_normal3[13],
        wolf_normal4[13],
        wolf_normal5[13],
        wolf_normal6[13],
        wolf_normal7[13],
        wolf_normal8[13],
        wolf_normal9[13]
    )),
    mean(c(
        wolf_normal0[14],
        wolf_normal1[14],
        wolf_normal2[14],
        wolf_normal3[14],
        wolf_normal4[14],
        wolf_normal5[14],
        wolf_normal6[14],
        wolf_normal7[14],
        wolf_normal8[14],
        wolf_normal9[14]
    )),
    mean(c(
        wolf_normal0[15],
        wolf_normal1[15],
        wolf_normal2[15],
        wolf_normal3[15],
        wolf_normal4[15],
        wolf_normal5[15],
        wolf_normal6[15],
        wolf_normal7[15],
        wolf_normal8[15],
        wolf_normal9[15]
    )),
    mean(c(
        wolf_normal0[16],
        wolf_normal1[16],
        wolf_normal2[16],
        wolf_normal3[16],
        wolf_normal4[16],
        wolf_normal5[16],
        wolf_normal6[16],
        wolf_normal7[16],
        wolf_normal8[16],
        wolf_normal9[16]
    )),
    mean(c(
        wolf_normal0[17],
        wolf_normal1[17],
        wolf_normal2[17],
        wolf_normal3[17],
        wolf_normal4[17],
        wolf_normal5[17],
        wolf_normal6[17],
        wolf_normal7[17],
        wolf_normal8[17],
        wolf_normal9[17]
    )),
    mean(c(
        wolf_normal0[18],
        wolf_normal1[18],
        wolf_normal2[18],
        wolf_normal3[18],
        wolf_normal4[18],
        wolf_normal5[18],
        wolf_normal6[18],
        wolf_normal7[18],
        wolf_normal8[18],
        wolf_normal9[18]
    )),
    mean(c(
        wolf_normal0[19],
        wolf_normal1[19],
        wolf_normal2[19],
        wolf_normal3[19],
        wolf_normal4[19],
        wolf_normal5[19],
        wolf_normal6[19],
        wolf_normal7[19],
        wolf_normal8[19],
        wolf_normal9[19]
    )),
    mean(c(
        wolf_normal0[20],
        wolf_normal1[20],
        wolf_normal2[20],
        wolf_normal3[20],
        wolf_normal4[20],
        wolf_normal5[20],
        wolf_normal6[20],
        wolf_normal7[20],
        wolf_normal8[20],
        wolf_normal9[20]
    )),
    mean(c(
        wolf_normal0[21],
        wolf_normal1[21],
        wolf_normal2[21],
        wolf_normal3[21],
        wolf_normal4[21],
        wolf_normal5[21],
        wolf_normal6[21],
        wolf_normal7[21],
        wolf_normal8[21],
        wolf_normal9[21]
    )),
    mean(c(
        wolf_normal0[22],
        wolf_normal1[22],
        wolf_normal2[22],
        wolf_normal3[22],
        wolf_normal4[22],
        wolf_normal5[22],
        wolf_normal6[22],
        wolf_normal7[22],
        wolf_normal8[22],
        wolf_normal9[22]
    )),
    mean(c(
        wolf_normal0[23],
        wolf_normal1[23],
        wolf_normal2[23],
        wolf_normal3[23],
        wolf_normal4[23],
        wolf_normal5[23],
        wolf_normal6[23],
        wolf_normal7[23],
        wolf_normal8[23],
        wolf_normal9[23]
    )),
    
    mean(c(
        wolf_normal0[24],
        wolf_normal1[24],
        wolf_normal2[24],
        wolf_normal3[24],
        wolf_normal4[24],
        wolf_normal5[24],
        wolf_normal6[24],
        wolf_normal7[24],
        wolf_normal8[24],
        wolf_normal9[24]
    )),
    mean(c(
        wolf_normal0[25],
        wolf_normal1[25],
        wolf_normal2[25],
        wolf_normal3[25],
        wolf_normal4[25],
        wolf_normal5[25],
        wolf_normal6[25],
        wolf_normal7[25],
        wolf_normal8[25],
        wolf_normal9[25]
    )),
    mean(c(
        wolf_normal0[26],
        wolf_normal1[26],
        wolf_normal2[26],
        wolf_normal3[26],
        wolf_normal4[26],
        wolf_normal5[26],
        wolf_normal6[26],
        wolf_normal7[26],
        wolf_normal8[26],
        wolf_normal9[26]
    ))
)


wolf_fast_avg <- c(
    mean(c(
        wolf_fast0[1],
        wolf_fast1[1],
        wolf_fast2[1],
        wolf_fast3[1],
        wolf_fast4[1],
        wolf_fast5[1],
        wolf_fast6[1],
        wolf_fast7[1],
        wolf_fast8[1],
        wolf_fast9[1]
    )),
    mean(c(
        wolf_fast0[2],
        wolf_fast1[2],
        wolf_fast2[2],
        wolf_fast3[2],
        wolf_fast4[2],
        wolf_fast5[2],
        wolf_fast6[2],
        wolf_fast7[2],
        wolf_fast8[2],
        wolf_fast9[2]
    )),
    mean(c(
        wolf_fast0[3],
        wolf_fast1[3],
        wolf_fast2[3],
        wolf_fast3[3],
        wolf_fast4[3],
        wolf_fast5[3],
        wolf_fast6[3],
        wolf_fast7[3],
        wolf_fast8[3],
        wolf_fast9[3]
    )),
    mean(c(
        wolf_fast0[4],
        wolf_fast1[4],
        wolf_fast2[4],
        wolf_fast3[4],
        wolf_fast4[4],
        wolf_fast5[4],
        wolf_fast6[4],
        wolf_fast7[4],
        wolf_fast8[4],
        wolf_fast9[4]
    )),
    mean(c(
        wolf_fast0[5],
        wolf_fast1[5],
        wolf_fast2[5],
        wolf_fast3[5],
        wolf_fast4[5],
        wolf_fast5[5],
        wolf_fast6[5],
        wolf_fast7[5],
        wolf_fast8[5],
        wolf_fast9[5]
    )),
    mean(c(
        wolf_fast0[6],
        wolf_fast1[6],
        wolf_fast2[6],
        wolf_fast3[6],
        wolf_fast4[6],
        wolf_fast5[6],
        wolf_fast6[6],
        wolf_fast7[6],
        wolf_fast8[6],
        wolf_fast9[6]
    )),
    mean(c(
        wolf_fast0[7],
        wolf_fast1[7],
        wolf_fast2[7],
        wolf_fast3[7],
        wolf_fast4[7],
        wolf_fast5[7],
        wolf_fast6[7],
        wolf_fast7[7],
        wolf_fast8[7],
        wolf_fast9[7]
    )),
    mean(c(
        wolf_fast0[8],
        wolf_fast1[8],
        wolf_fast2[8],
        wolf_fast3[8],
        wolf_fast4[8],
        wolf_fast5[8],
        wolf_fast6[8],
        wolf_fast7[8],
        wolf_fast8[8],
        wolf_fast9[8]
    )),
    mean(c(
        wolf_fast0[9],
        wolf_fast1[9],
        wolf_fast2[9],
        wolf_fast3[9],
        wolf_fast4[9],
        wolf_fast5[9],
        wolf_fast6[9],
        wolf_fast7[9],
        wolf_fast8[9],
        wolf_fast9[9]
    )),
    mean(c(
        wolf_fast0[10],
        wolf_fast1[10],
        wolf_fast2[10],
        wolf_fast3[10],
        wolf_fast4[10],
        wolf_fast5[10],
        wolf_fast6[10],
        wolf_fast7[10],
        wolf_fast8[10],
        wolf_fast9[10]
    )),
    mean(c(
        wolf_fast0[11],
        wolf_fast1[11],
        wolf_fast2[11],
        wolf_fast3[11],
        wolf_fast4[11],
        wolf_fast5[11],
        wolf_fast6[11],
        wolf_fast7[11],
        wolf_fast8[11],
        wolf_fast9[11]
    )),
    mean(c(
        wolf_fast0[12],
        wolf_fast1[12],
        wolf_fast2[12],
        wolf_fast3[12],
        wolf_fast4[12],
        wolf_fast5[12],
        wolf_fast6[12],
        wolf_fast7[12],
        wolf_fast8[12],
        wolf_fast9[12]
    )),
    
    mean(c(
        wolf_fast0[13],
        wolf_fast1[13],
        wolf_fast2[13],
        wolf_fast3[13],
        wolf_fast4[13],
        wolf_fast5[13],
        wolf_fast6[13],
        wolf_fast7[13],
        wolf_fast8[13],
        wolf_fast9[13]
    )),
    mean(c(
        wolf_fast0[14],
        wolf_fast1[14],
        wolf_fast2[14],
        wolf_fast3[14],
        wolf_fast4[14],
        wolf_fast5[14],
        wolf_fast6[14],
        wolf_fast7[14],
        wolf_fast8[14],
        wolf_fast9[14]
    )),
    mean(c(
        wolf_fast0[15],
        wolf_fast1[15],
        wolf_fast2[15],
        wolf_fast3[15],
        wolf_fast4[15],
        wolf_fast5[15],
        wolf_fast6[15],
        wolf_fast7[15],
        wolf_fast8[15],
        wolf_fast9[15]
    )),
    mean(c(
        wolf_fast0[16],
        wolf_fast1[16],
        wolf_fast2[16],
        wolf_fast3[16],
        wolf_fast4[16],
        wolf_fast5[16],
        wolf_fast6[16],
        wolf_fast7[16],
        wolf_fast8[16],
        wolf_fast9[16]
    )),
    mean(c(
        wolf_fast0[17],
        wolf_fast1[17],
        wolf_fast2[17],
        wolf_fast3[17],
        wolf_fast4[17],
        wolf_fast5[17],
        wolf_fast6[17],
        wolf_fast7[17],
        wolf_fast8[17],
        wolf_fast9[17]
    )),
    mean(c(
        wolf_fast0[18],
        wolf_fast1[18],
        wolf_fast2[18],
        wolf_fast3[18],
        wolf_fast4[18],
        wolf_fast5[18],
        wolf_fast6[18],
        wolf_fast7[18],
        wolf_fast8[18],
        wolf_fast9[18]
    )),
    mean(c(
        wolf_fast0[19],
        wolf_fast1[19],
        wolf_fast2[19],
        wolf_fast3[19],
        wolf_fast4[19],
        wolf_fast5[19],
        wolf_fast6[19],
        wolf_fast7[19],
        wolf_fast8[19],
        wolf_fast9[19]
    )),
    mean(c(
        wolf_fast0[20],
        wolf_fast1[20],
        wolf_fast2[20],
        wolf_fast3[20],
        wolf_fast4[20],
        wolf_fast5[20],
        wolf_fast6[20],
        wolf_fast7[20],
        wolf_fast8[20],
        wolf_fast9[20]
    )),
    mean(c(
        wolf_fast0[21],
        wolf_fast1[21],
        wolf_fast2[21],
        wolf_fast3[21],
        wolf_fast4[21],
        wolf_fast5[21],
        wolf_fast6[21],
        wolf_fast7[21],
        wolf_fast8[21],
        wolf_fast9[21]
    )),
    mean(c(
        wolf_fast0[22],
        wolf_fast1[22],
        wolf_fast2[22],
        wolf_fast3[22],
        wolf_fast4[22],
        wolf_fast5[22],
        wolf_fast6[22],
        wolf_fast7[22],
        wolf_fast8[22],
        wolf_fast9[22]
    )),
    mean(c(
        wolf_fast0[23],
        wolf_fast1[23],
        wolf_fast2[23],
        wolf_fast3[23],
        wolf_fast4[23],
        wolf_fast5[23],
        wolf_fast6[23],
        wolf_fast7[23],
        wolf_fast8[23],
        wolf_fast9[23]
    )),
    
    mean(c(
        wolf_fast0[24],
        wolf_fast1[24],
        wolf_fast2[24],
        wolf_fast3[24],
        wolf_fast4[24],
        wolf_fast5[24],
        wolf_fast6[24],
        wolf_fast7[24],
        wolf_fast8[24],
        wolf_fast9[24]
    )),
    mean(c(
        wolf_fast0[25],
        wolf_fast1[25],
        wolf_fast2[25],
        wolf_fast3[25],
        wolf_fast4[25],
        wolf_fast5[25],
        wolf_fast6[25],
        wolf_fast7[25],
        wolf_fast8[25],
        wolf_fast9[25]
    )),
    mean(c(
        wolf_fast0[26],
        wolf_fast1[26],
        wolf_fast2[26],
        wolf_fast3[26],
        wolf_fast4[26],
        wolf_fast5[26],
        wolf_fast6[26],
        wolf_fast7[26],
        wolf_fast8[26],
        wolf_fast9[26]
    ))
)

plot(year, wolf_normal_avg, type="l", main = "Population Population Growth Over Time (Average for each Phenotype)", xlab = "Time", ylab = "Population", col = "#0077ff", lty = 0)
lines(year, wolf_normal_avg, lty = 1, col = "blue")
lines(year, wolf_fast_avg, lty = 2, col = "red")

legend(
    0, 600, 
    legend = c("", "Average Normal Wolf Population", "Average Fast Wolf Population"), 
    col = c("#0077ff", "blue", "red"),
    lty = 0:2,
)

