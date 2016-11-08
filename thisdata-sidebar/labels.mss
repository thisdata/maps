@sans:"Arial Regular","DejaVu Sans Book";
@sans_bold:"Arial Bold","DejaVu Sans Bold";
@text: #EEE;

#country-labels[zoom>2] {
  text-name:'[NAME]';
  text-face-name:@sans_bold;
  text-size: 13;
  text-fill:@text;
  text-wrap-width:40;
  text-line-spacing:2;
  text-placement-type: simple;
  text-placements: "N,S,E,W,NE,SE,NW,SW,12,10";
  [zoom<4][LabelRank>2] { text-size: 0;text-name:''; }
  [zoom>3][ScaleRank<=1] {
    text-face-name: @sans_bold;
  }
}

#cities {
  [SCALERANK<3][zoom>=4],
  [SCALERANK=3][zoom>=5],
  [SCALERANK=4][zoom>=5],
  [SCALERANK=5][zoom>=6],
  [SCALERANK=6][zoom>=6],
  [SCALERANK=7][zoom>=7],
  [SCALERANK=8][zoom>=7],
  [SCALERANK=9][zoom>=8],
  [SCALERANK=10][zoom>=8] {
    text-name:'[NAME]';
    text-face-name:@sans;
    text-fill:@text;
    text-size:9;
  }
  [zoom=4] {
    [SCALERANK<3] { text-size: 12; }
  }
  [zoom=5] {
    [SCALERANK<3] { text-size: 13; }
    [SCALERANK=3] { text-size: 12; }
    [SCALERANK=4] { text-size: 11; }
  }
  [zoom=6] {
    [SCALERANK<3] { text-size: 14; }
    [SCALERANK=3] { text-size: 13; }
    [SCALERANK=4] { text-size: 12; }
    [SCALERANK=5] { text-size: 11; }
  }
  [zoom=7] {
    [SCALERANK<3] { text-size: 15; }
    [SCALERANK=3] { text-size: 14; }
    [SCALERANK=4] { text-size: 13; }
    [SCALERANK=5] { text-size: 12; }
    [SCALERANK=6] { text-size: 11; }
    [SCALERANK=7] { text-size: 11; }
  }
  [zoom=8] {
    [SCALERANK<3] { text-size: 15; }
    [SCALERANK=3] { text-size: 15; }
    [SCALERANK=4] { text-size: 14; }
    [SCALERANK=5] { text-size: 14; }
    [SCALERANK=6] { text-size: 13; }
    [SCALERANK=7] { text-size: 13; }
    [SCALERANK=8] { text-size: 12; }
    [SCALERANK=9] { text-size: 11; }
  }
  [zoom=9] {
    [SCALERANK<3] { text-size: 16; }
    [SCALERANK=3] { text-size: 16; }
    [SCALERANK=4] { text-size: 15; }
    [SCALERANK=5] { text-size: 15; }
    [SCALERANK=6] { text-size: 14; }
    [SCALERANK=7] { text-size: 14; }
    [SCALERANK=8] { text-size: 13; }
    [SCALERANK=9] { text-size: 13; }
    [SCALERANK=10] { text-size: 12; }
  }
  [zoom=10] {
    [SCALERANK<3] { text-size: 16; text-character-spacing:2; }
    [SCALERANK=3] { text-size: 16; text-character-spacing:2; }
    [SCALERANK=4] { text-size: 15; text-character-spacing:1; }
    [SCALERANK=5] { text-size: 15; text-character-spacing:1; }
    [SCALERANK=6] { text-size: 15; text-character-spacing:1; }
    [SCALERANK=7] { text-size: 14; }
    [SCALERANK=8] { text-size: 14; }
    [SCALERANK=9] { text-size: 13; }
    [SCALERANK=10] { text-size: 13; }
  }
  [zoom>10] {
    [SCALERANK<3] { text-size: 16; text-character-spacing:3; }
    [SCALERANK=3] { text-size: 16; text-character-spacing:3; }
    [SCALERANK=4] { text-size: 16; text-character-spacing:3; }
    [SCALERANK=5] { text-size: 15; text-character-spacing:2; }
    [SCALERANK=6] { text-size: 15; text-character-spacing:2; }
    [SCALERANK=7] { text-size: 15; text-character-spacing:2; }
    [SCALERANK=8] { text-size: 14; text-character-spacing:1; }
    [SCALERANK=9] { text-size: 14; text-character-spacing:1; }
    [SCALERANK=10] { text-size: 14; text-character-spacing:1; }
  }
}
