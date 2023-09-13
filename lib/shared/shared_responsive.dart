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
