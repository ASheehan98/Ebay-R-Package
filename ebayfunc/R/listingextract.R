listing_extract = function(x) {
  initialdata = read_html(x)
  listingdata = initialdata%>%
    html_nodes(".s-item__title")%>%
    html_text()
  listingdata
  sansfirstentry = listingdata[-c(1)]
  sansfirstentry
  
}
