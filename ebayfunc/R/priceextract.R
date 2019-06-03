
price_extract = function(x) {
  linkdata = read_html(x)
  initialpricedata = linkdata %>%
    html_nodes(".s-item__price") %>%
    html_text()
  adjust1 = str_extract(initialpricedata, pattern = "[[:digit:]]{1,3}[,][[:digit:]]{1,3}")
  adjust2 = str_replace(adjust1,pattern = "[,]", replacement = "")
  adjust3 = as.numeric(adjust2)
  sansfirstentry = adjust3[-c(1)]
  sansfirstentry
}

