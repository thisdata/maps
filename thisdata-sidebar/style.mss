@water: #1D1C2E;
@land: #2F2B45;
@line: #3A3855;
@secondary_line: #727272;

Map {
  background-color: @water;
}

#countries {
  polygon-fill: @land;
}

#admin-0-boundary-lines-land {
  line-width:1;
  line-color:@line;
}

#state[ADM0_A3="USA"],
#state[ADM0_A3="CAN"],
#state[ADM0_A3="AUS"]  {
  [zoom>3] {
    line-color:@secondary_line;
    line-width:1.2;
    line-dasharray:6,2,2,2;
  }
}
