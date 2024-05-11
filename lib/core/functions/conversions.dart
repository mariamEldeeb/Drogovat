/// Converts Centimeters to Inches
double convertCMtoIN(double cm){
  var inc = cm * 0.393701;
  return inc;
}

/// Converts Inches to Centimeters
double convertINtoCM(double inch) {
  var cm = inch * 2.54;
  return cm;
}

/// Converts Centimeters to Foot
int convertCMtoFT(double cm) {
  var ft = cm.floor() / 2.54 ~/ 12;
  return ft;
}

/// Converts Foot to Centimeters
double convertFTtoCM(int foot) {
  var cm = foot * 30.48;
  return cm;
}

/// Converts Foot to Inches
int convertFTtoIN(int foot) {
  var inc = foot * 12;
  return inc;
}

/// Converts Inches to Foot
int convertINtoFT(int inches) {
  var foot = inches ~/ 12;
  return foot;
}

/// Converts Kilograms to Pounds
double convertKGtoLB(double kg) {
  var pound = kg * 2.20462;
  return pound;
}

/// Converts Pounds to Kilograms
double convertLBtoKG(double lb) {
  var kilo = lb * 0.453592;
  return kilo;
}