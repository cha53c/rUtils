countWorkDays <- function(year, month){
  start_date <- sprintf("%d/01/01", year)
  end_date <- sprintf("%d/12/31", year)
  start <- as.POSIXlt(as.Date(start_date))
  end <- as.POSIXlt(as.Date(end_date))
  cal <- seq(start, end, by="1 day")
  cal <- cal[weekdays(cal) != "Sunday"]
  cal <- cal[weekdays(cal) != "Saturday"]
  cal <- cal[months(cal) == month]
  length(cal)
}