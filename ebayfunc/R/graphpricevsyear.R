pricevsyear = function(x) {
  plotdf = data.frame("Year" = year_extract(x),"Price" = price_extract(x))
  plot = ggplot(plotdf, aes(x = Year, y = Price)) + geom_point() + labs(title = "Vehicle Price Vs. Vehicle Year") + scale_y_continuous("Price", limits = c(0,500000)) + scale_x_continuous("Model Year")
  plot
}
