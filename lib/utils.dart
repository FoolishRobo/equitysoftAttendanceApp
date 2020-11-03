

String toHumanReadableDate(DateTime dateTime) {
  return getWeekDay(dateTime.weekday)+" "+dateTime.day.toString();
}

String getWeekDay(int i){
  switch (i) {
    case 1:
      {
        return "Mon";
      }
      break;

    case 2:
      {
        return "Tue";
      }
      break;

    case 3:
      {
        return "Wed";
      }
      break;

    case 4:
      {
        return "Thu";
      }
      break;

    case 5:
      {
        return "Fri";
      }
      break;

    case 6:
      {
        return "Sat";
      }
      break;

    case 7:
      {
        return "Sun";
      }
      break;
  }
}