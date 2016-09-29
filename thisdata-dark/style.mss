@water: #232323;
@land: #636363;
@line: #7A7A7A;
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
