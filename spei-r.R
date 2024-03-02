library("SPEI")
library("ggplot2")
library("lmomco")
library("writexl")

DataSPEI$PET<-hargreaves(Tmin = DataSPEI$Tmin, Tmax = DataSPEI$Tmax, lat = 29.98)
DataSPEI$PET
WBal<-DataSPEI$prec-DataSPEI$PET
WBal
spei12<-spei(WBal,12)
spei12

# Create a data frame with Date and SPEI values
df_spei12 <- data.frame(Date = time(spei12$fitted), SPEI_12months = spei12$fitted)

# Save df_spei3 to Excel
library(writexl)
write_xlsx(list(spei12_data = df_spei12), "speiR_data.xlsx")

# Plot the 3-month SPEI bar graph using ggplot2

ggplot(data = df_spei3, aes(x = Date, y = SPEI_3months, fill = factor(SPEI_3months >= 0))) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("red", "blue"), labels = c("Negative", "Positive")) +
  xlab("Time") +
  ylab("SPEI Value") +
  ggtitle("Standardized Precipitation-Evapotranspiration Index (SPEI) - 3-month") +
  theme_minimal()

# Plot the 3-month SPEI line graph using ggplot2

ggplot(data = df_spei3, aes(x = Date, y = SPEI_3months)) +
  geom_line(color = ifelse(df_spei3$SPEI_3months >= 0, "blue", "red")) +
  xlab("Time") +
  ylab("SPEI Value") +
  ggtitle("Standardized Precipitation-Evapotranspiration Index (SPEI) - 3-month") +
  theme_minimal()
