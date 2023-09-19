double responsiveHeighContinerLogib(double screenHeight) {
  if (screenHeight < 812) {
    return screenHeight * 0.57;
  } else if (screenHeight ==640 ) {
    return 200;
   }else if (screenHeight > 812) {
    return screenHeight * 0.45;
  } else if (screenHeight > 1111) {
    return screenHeight * 0.001;
  }else {
    return screenHeight * 0.5;
  }
}

double responsiveHeighPartionExchange(double screenHeight) {
  if (screenHeight < 812) {
    return screenHeight * 0.8;
  } else if (screenHeight ==640 ) {
    return 0.8;
   }else if (screenHeight == 812) {
    return screenHeight * 0.8;
  } else if (screenHeight > 12001) {
    return screenHeight * 0.9;
  }
  else if (screenHeight == 1366) {
    return screenHeight * 0.9;
  }

  else if (screenHeight >= 1080) {
    return screenHeight * 0.9;
  }
   else if (screenHeight == 853) {
    return screenHeight * 0.93;
  }
  else {
    return screenHeight * 0.7;
  }
}// height * 0.8 : height * 0.7