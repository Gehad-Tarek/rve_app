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

double responsiveHeighContinerReviewBar(double screenHeight) {
  if (screenHeight < 812) {
    return screenHeight * 0.22;
  } else if (screenHeight ==640 ) {
    return screenHeight*0.22;
   }else if (screenHeight > 812) {
    return screenHeight * 0.17;
  } else if (screenHeight > 1111) {
    return screenHeight * 0.001;
  }else {
    return screenHeight * 0.2;
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


  double sizedboxWidethPopularHotelWidget(double screenWidth) {
    if (screenWidth < 812) {
      return screenWidth / 11;
      } else if (screenWidth == 360) {
        return screenWidth * 0.01; //5
      } else if (screenWidth <= 375) {
        return screenWidth / 8; //11
      } else if (screenWidth == 375) {
        return screenWidth / 8;
    }
    return screenWidth / 8; //8
  }