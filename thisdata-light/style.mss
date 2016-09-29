@water: #E0E0E0;
@land: #EEEEEE;
@line: #D6D6D6;
@secondary_line: #D6D6D6;

Map {
  background-color: @water;
}

#countries {
  ::outline {
    line-color: @line;
    line-width: 2;
    line-join: round;
  }
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
