year_extract = function(x) {
  initialdata = read_html(x)
  listingdata = initialdata%>%
    html_nodes(".s-item__title")%>%
    html_text()
  sansfirstentry = listingdata[-c(1)]
  year1 = str_extract(sansfirstentry, pattern = "[[:digit:]]{4}")
  year2 = as.numeric(year1)
  year2

  
}
