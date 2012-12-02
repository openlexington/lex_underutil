/* ---- PALETTE ---- */

@water:#c0d8ff;
@forest:#cea;
@land:#FCFBE7;

Map {
  background-color:@land;
}

.natural[TYPE='water'],
.water {
  polygon-fill:@water;
}

.natural[TYPE='forest'] {
  polygon-fill:@forest;
}
/*
.poi::parking[CATEGORY='Automotive'][NAME="Parking"]{
  point-file: url(maki/parking-18.png);
}
*/