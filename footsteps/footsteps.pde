Table table; //global variable thta holds my spreadsheet

void setup() {
  size(1200, 700);
  pixelDensity(1); //had a warning saying my pixeldensity was 2 as my screen is high-density
  table = loadTable("steps.csv", "header"); //tells processing that the first rows are columns and not data
  println("Rows loaded: " + table.getRowCount()); //prints how many days of data were loaded

  TableRow first = table.getRow(0);
  println(first.getString("date"));
  println(int(first.getString("steps").replace(",", ""))); //removes the commas from my step count
  println(first.getFloat("distance")); //float = decimal
  println(int(float(first.getString("active")))); //float to convert to decimal, int then converts the float to whole numebrs
}

void draw() {
  background(20);
}
