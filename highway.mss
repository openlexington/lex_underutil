/* ---- PALETTE ---- */

@motorway_line:     #E65C5C;
@motorway_fill:     lighten(@motorway_line,10%);
@motorway_case:     @motorway_line * 0.9;

@trunk_line:        #e68a5c;
@trunk_fill:        lighten(@trunk_line,10%);
@trunk_case:        @trunk_line * 0.9;

@primary_line:      #FFC859;
@primary_fill:      lighten(@primary_line,10%);
@primary_case:      @primary_line * 0.9;

@secondary_line:    #FFE873;
@secondary_fill:    lighten(@secondary_line,10%);
@secondary_case:    @secondary_line * 0.9;

@standard_line:     @land * 0.85;
@standard_fill:     #fff;
@standard_case:     @land * 0.9;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   #FAFAF5;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        #FAFAF5;
@cycle_case:        @land;

@rail_line:         #999;
@rail_fill:         #fff;
@rail_case:         @land;

@aeroway:           #ddd;

/* ---- ROAD COLORS ---- */

/*.highway.line { line-color: #f00; } /* debug */

#highway[TYPE='motorway'] {
  .line[zoom>=7]  { 
    line-color:@motorway__line;
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=10] {
    line-color:@motorway_fill;
    line-cap:round;
    line-join:round;
  }
}

.highway[TYPE='motorway_link'] {
  .line[zoom>=7]  { 
    line-color:@motorway_line;
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=12] {
    line-color:@motorway_fill;
    line-cap:round;
    line-join:round;
  }
}

.highway[TYPE='trunk'],
.highway[TYPE='trunk_link'] {
  .line[zoom>=7] {
    line-color:@trunk_line;
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=11] {
    line-color:@trunk_fill;
    line-cap:round;
    line-join:round;
  }
}

.highway[TYPE='primary'],
.highway[TYPE='primary_link'] {
  .line[zoom>=7] {
    line-color:@primary_line;
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=12] {
    line-color:@primary_fill;
    line-cap:round;
    line-join:round;
  }
}

.highway[TYPE='secondary'] {
  .line[zoom>=8] {
    line-color:@secondary_line;
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=12] {
    line-color:@secondary_fill;
    line-cap:round;
    line-join:round;
  }
}

.highway[TYPE='secondary_link'] {
  .line[zoom>=12] {
    line-color:@secondary_line;
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=14] {
    line-color:@secondary_fill;
    line-cap:round;
    line-join:round;
  }
}

.highway[TYPE='living_street'],
.highway[TYPE='residential'],
.highway[TYPE='road'],
.highway[TYPE='tertiary'],
.highway[TYPE='unclassified'] {
  .line[zoom>=10] {
    line-color:@land * 0.85;
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=14] {
    line-color:#fff;
    line-cap:round;
    line-join:round;
  }
}

.highway[TYPE='service'] {
  .line[zoom>=13] {
    line-color:@standard_line;
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=16] {
    line-color:@standard_fill;
    line-cap:round;
    line-join:round;
  }
}

.highway[TYPE='track'] {
  .line[zoom>=13] {
    line-color:@standard_line;
    line-cap:round;
    line-join:round;
  }
}

.highway[TYPE='footway'],
.highway[TYPE='path'],
.highway[TYPE='pedestrian'] {
  .line[zoom>=14] {
    line-color:@pedestrian_line;
    line-cap:round;
    line-join:round;
  }
}

.highway[TYPE='cycleway'] {
  .line[zoom>=14] {
    line-color:@cycle_line;
    line-cap:round;
    line-join:round;
  }
}

/* ---- ROAD WIDTHS ---- */

.highway[zoom=7] {
  .line[TYPE='motorway'] { line-width: 1.0; }
  .line[TYPE='trunk']    { line-width: 0.8; }
  .line[TYPE='primary']  { line-width: 0.6; }
}

.highway[zoom=8] {
  .line[TYPE='motorway'] { line-width: 1.0; }
  .line[TYPE='trunk']    { line-width: 0.8; }
  .line[TYPE='primary']  { line-width: 0.5; }
  .line[TYPE='secondary']{ line-width: 0.3; }
}

.highway[zoom=9] {
  .line[TYPE='motorway'] { line-width: 1.0; }
  .line[TYPE='trunk']    { line-width: 0.8; }
  .line[TYPE='primary']  { line-width: 0.6; }
  .line[TYPE='secondary']{ line-width: 0.4; }
}

.highway[zoom=10] {
  .line[TYPE='motorway'] { line-width: 0.8 + 1.6; }
  .fill[TYPE='motorway'] { line-width: 0.8; }
  
  .line[TYPE='trunk']    { line-width: 1.4; }
  
  .line[TYPE='primary']  { line-width: 1.2; }
  
  .line[TYPE='secondary']{ line-width: 0.8; }
  
  .line[TYPE='living_street'],
  .line[TYPE='residential'],
  .line[TYPE='road'],
  .line[TYPE='tertiary'],
  .line[TYPE='unclassified'] { line-width: 0.2; }
}

.highway[zoom=11] {
  .line[TYPE='motorway']      { line-width: 1.0 + 1.8; }
  .fill[TYPE='motorway']      { line-width: 1.0; }
  .line[TYPE='trunk']         { line-width: 0.8 + 1.6; }
  .fill[TYPE='trunk']         { line-width: 0.8; }
  .line[TYPE='primary']       { line-width: 1.4; }
  .line[TYPE='secondary']     { line-width: 1.0; }
  
  .line[TYPE='motorway_link'] { line-width: 0.6; }
  .line[TYPE='trunk_link']    { line-width: 0.5; }
  .line[TYPE='primary_link']  { line-width: 0.4; }
  
  .line[TYPE='living_street'],
  .line[TYPE='residential'],
  .line[TYPE='road'],
  .line[TYPE='tertiary'],
  .line[TYPE='unclassified'] { line-width: 0.4; }
}

.highway[zoom=12] {
  .line[TYPE='motorway']      { line-width: 1.2 + 2; }
  .fill[TYPE='motorway']      { line-width: 1.2; }
  .line[TYPE='trunk']         { line-width: 1.0 + 1.8; }
  .fill[TYPE='trunk']         { line-width: 1.0; }
  .line[TYPE='primary']       { line-width: 0.8 + 1.6; }
  .fill[TYPE='primary']       { line-width: 0.8; }
  .line[TYPE='secondary']     { line-width: 0.8 + 1.6; }
  .fill[TYPE='secondary']     { line-width: 0.8; }
  
  .line[TYPE='motorway_link'] { line-width: 1.0 + 1.8; }
  .fill[TYPE='motorway_link'] { line-width: 1.0; }
  .line[TYPE='trunk_link']    { line-width: 0.8 + 1.6; }
  .fill[TYPE='trunk_link']    { line-width: 0.8; }
  .line[TYPE='primary_link']  { line-width: 0.8 + 1.6; }
  .fill[TYPE='primary_link']  { line-width: 0.8; }
  .line[TYPE='secondary_link']  { line-width: 0.8; }
  
  .line[TYPE='living_street'],
  .line[TYPE='residential'],
  .line[TYPE='road'],
  .line[TYPE='tertiary'],
  .line[TYPE='unclassified']  { line-width: 0.6; }
}

.highway[zoom=13] {
  .line[TYPE='motorway']      { line-width: 2.0 + 2; }
  .fill[TYPE='motorway']      { line-width: 2.0; }
  .line[TYPE='trunk']         { line-width: 1.4 + 2; }
  .fill[TYPE='trunk']         { line-width: 1.4; }
  .line[TYPE='primary']       { line-width: 1.2 + 2; }
  .fill[TYPE='primary']       { line-width: 1.2; }
  .line[TYPE='primary_link'],
  .line[TYPE='secondary']     { line-width: 1.0 + 2; }
  .fill[TYPE='primary_link'],
  .fill[TYPE='secondary']     { line-width: 1.0; }
  
  .line[TYPE='motorway_link'] { line-width: 1.0 + 2; }
  .fill[TYPE='motorway_link'] { line-width: 1.0; }
  .line[TYPE='trunk_link']    { line-width: 1.0 + 2; }
  .fill[TYPE='trunk_link']    { line-width: 1.0; }
  .line[TYPE='primary_link']  { line-width: 1.0 + 2; }
  .fill[TYPE='primary_link']  { line-width: 1.0; }
  .line[TYPE='secondary_link']{ line-width: 0.8; }
  
  .line[TYPE='living_street'],
  .line[TYPE='residential'],
  .line[TYPE='road'],
  .line[TYPE='tertiary'],
  .line[TYPE='unclassified']  { line-width: 1.0; }
  .line[TYPE='service']       { line-width: 0.5; }
  
  .line[TYPE='track']         { line-width: 0.5; line-dasharray:2,3; }
}

.highway[zoom=14] {
  .line[TYPE='motorway']      { line-width: 4 + 2; }
  .fill[TYPE='motorway']      { line-width: 4; }
  .line[TYPE='trunk']         { line-width: 3 + 2; }
  .fill[TYPE='trunk']         { line-width: 3; }
  .line[TYPE='primary']       { line-width: 2 + 2; }
  .fill[TYPE='primary']       { line-width: 2; }
  .line[TYPE='secondary']     { line-width: 2 + 2; }
  .fill[TYPE='secondary']     { line-width: 2; }
  
  .line[TYPE='motorway_link'] { line-width: 1.4 + 2; }
  .fill[TYPE='motorway_link'] { line-width: 1.4; }
  .line[TYPE='trunk_link']    { line-width: 1.2 + 2; }
  .fill[TYPE='trunk_link']    { line-width: 1.2; }
  .line[TYPE='primary_link']  { line-width: 1.0 + 2; }
  .fill[TYPE='primary_link']  { line-width: 1.0; }
  .line[TYPE='secondary_link']{ line-width: 0.8 + 2; }
  .fill[TYPE='secondary_link']{ line-width: 0.8; }
  
  .line[TYPE='living_street'],
  .line[TYPE='residential'],
  .line[TYPE='road'],
  .line[TYPE='tertiary'],
  .line[TYPE='unclassified']  { line-width: 1.6 + 1.6; }
  .fill[TYPE='living_street'],
  .fill[TYPE='residential'],
  .fill[TYPE='road'],
  .fill[TYPE='tertiary'],
  .fill[TYPE='unclassified']  { line-width: 1.6; }
  .line[TYPE='service']       { line-width: 0.6; }
  
  .line[TYPE='track']         { line-width: 0.6; line-dasharray:2,3; }
  
  .line[TYPE='cycleway'],
  .line[TYPE='footway'],
  .line[TYPE='path'],
  .line[TYPE='pedestrian'] {
    line-dasharray:1,2;
    line-width:0.6;
  }
}

.highway[zoom=15] {
  .line[TYPE='motorway']      { line-width: 6 + 2; }
  .fill[TYPE='motorway']      { line-width: 6; }
  .line[TYPE='trunk']         { line-width: 5 + 2; }
  .fill[TYPE='trunk']         { line-width: 5; }
  .line[TYPE='primary']       { line-width: 4 + 2; }
  .fill[TYPE='primary']       { line-width: 4; }
  .line[TYPE='secondary']     { line-width: 4 + 2; }
  .fill[TYPE='secondary']     { line-width: 4; }
  
  .line[TYPE='motorway_link'] { line-width: 2 + 2; }
  .fill[TYPE='motorway_link'] { line-width: 2; }
  .line[TYPE='trunk_link']    { line-width: 1.6 + 2; }
  .fill[TYPE='trunk_link']    { line-width: 1.6; }
  .line[TYPE='primary_link']  { line-width: 1.4 + 2; }
  .fill[TYPE='primary_link']  { line-width: 1.4; }
  .line[TYPE='secondary_link']{ line-width: 1.0 + 2; }
  .fill[TYPE='secondary_link']{ line-width: 1.0; }
  
  .line[TYPE='living_street'],
  .line[TYPE='residential'],
  .line[TYPE='road'],
  .line[TYPE='tertiary'],
  .line[TYPE='unclassified']  { line-width: 4 + 2; }
  .fill[TYPE='living_street'],
  .fill[TYPE='residential'],
  .fill[TYPE='road'],
  .fill[TYPE='tertiary'],
  .fill[TYPE='unclassified']  { line-width: 4; }
  .line[TYPE='service']       { line-width: 1; }
  
  .line[TYPE='track']         { line-width: 1; line-dasharray:2,3; }
  
  .line[TYPE='cycleway'],
  .line[TYPE='footway'],
  .line[TYPE='path'],
  .line[TYPE='pedestrian'] {
    line-dasharray:1,2;
    line-width:0.8;
  }
}

.highway[zoom=16] {
  .line[TYPE='motorway']      { line-width: 9 + 3; }
  .fill[TYPE='motorway']      { line-width: 9; }
  .line[TYPE='trunk']         { line-width: 8 + 2.5; }
  .fill[TYPE='trunk']         { line-width: 8; }
  .line[TYPE='primary']       { line-width: 7 + 2; }
  .fill[TYPE='primary']       { line-width: 7; }
  .line[TYPE='secondary']     { line-width: 6 + 2; }
  .fill[TYPE='secondary']     { line-width: 6; }
  
  .line[TYPE='motorway_link'] { line-width: 3 + 2.5; }
  .fill[TYPE='motorway_link'] { line-width: 3; }
  .line[TYPE='trunk_link']    { line-width: 2 + 2; }
  .fill[TYPE='trunk_link']    { line-width: 2; }
  .line[TYPE='primary_link']  { line-width: 1.8 + 2; }
  .fill[TYPE='primary_link']  { line-width: 1.8; }
  .line[TYPE='secondary_link']{ line-width: 1.4 + 2; }
  .fill[TYPE='secondary_link']{ line-width: 1.4; }
  
  .line[TYPE='living_street'],
  .line[TYPE='residential'],
  .line[TYPE='road'],
  .line[TYPE='tertiary'],
  .line[TYPE='unclassified']  { line-width: 6 + 2; }
  .fill[TYPE='living_street'],
  .fill[TYPE='residential'],
  .fill[TYPE='road'],
  .fill[TYPE='tertiary'],
  .fill[TYPE='unclassified']  { line-width: 6; }
  .line[TYPE='service']       { line-width: 1.4 + 2; }
  .fill[TYPE='service']       { line-width: 1.4; }
  
  .line[TYPE='track']         { line-width: 1.2; line-dasharray:2,3; }
  
  .line[TYPE='cycleway'],
  .line[TYPE='footway'],
  .line[TYPE='path'],
  .line[TYPE='pedestrian'] {
    line-dasharray:1,2;
    line-width:1.0;
  }
}

.highway[zoom>=17] {
  .line[TYPE='motorway']      { line-width: 13 + 3; }
  .fill[TYPE='motorway']      { line-width: 13; }
  .line[TYPE='trunk']         { line-width: 10 + 2.5; }
  .fill[TYPE='trunk']         { line-width: 10; }
  .line[TYPE='primary']       { line-width: 9 + 2; }
  .fill[TYPE='primary']       { line-width: 9; }
  .line[TYPE='secondary']     { line-width: 8 + 2; }
  .fill[TYPE='secondary']     { line-width: 8; }
  
  .line[TYPE='motorway_link'] { line-width: 4 + 2.5; }
  .fill[TYPE='motorway_link'] { line-width: 4; }
  .line[TYPE='trunk_link']    { line-width: 3.5 + 2; }
  .fill[TYPE='trunk_link']    { line-width: 3.5; }
  .line[TYPE='primary_link']  { line-width: 3 + 2; }
  .fill[TYPE='primary_link']  { line-width: 3; }
  .line[TYPE='secondary_link']{ line-width: 2.5 + 2; }
  .fill[TYPE='secondary_link']{ line-width: 2.5; }
  
  .line[TYPE='living_street'],
  .line[TYPE='residential'],
  .line[TYPE='road'],
  .line[TYPE='tertiary'],
  .line[TYPE='unclassified']  { line-width: 8 + 2; }
  .fill[TYPE='living_street'],
  .fill[TYPE='residential'],
  .fill[TYPE='road'],
  .fill[TYPE='tertiary'],
  .fill[TYPE='unclassified']  { line-width: 8; }
  
  .line[TYPE='service']       { line-width: 2 + 2; }
  .fill[TYPE='service']       { line-width: 2; }
  
  .line[TYPE='track']         { line-width: 1.4; line-dasharray:2,3; }
  
  .line[TYPE='cycleway'],
  .line[TYPE='footway'],
  .line[TYPE='path'],
  .line[TYPE='pedestrian'] {
    line-dasharray:2,3;
    line-width:1.2;
  }
}

/* ---- ONE WAY ARROWS ---- */

.highway.fill::oneway_arrow[zoom>15][ONEWAY='yes'] {
  marker-type:arrow;
  marker-width:1;
  marker-line-width:1;
  marker-line-opacity:0.5;
  marker-line-color:#f7eaa3;
  marker-spacing: 200;
  marker-fill:spin(#444,-10);
  marker-opacity:0.8;
}

