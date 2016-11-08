//Lab test 1
//c15406532
//Tavi Nolan
//Lab D

void setup()
{
 size(800,800); 
 loadData();
}

int rowCount, x1, y1, x2, y2;

ArrayList<Star> info = new ArrayList<Star>();

void loadData()
{
  info.clear();
  
  Table t = loadTable("Data2.csv");
  for(int i = 0 ; i < t.getRowCount(); i ++)
  {
    TableRow row = t.getRow(i);
    Star star = new Star(row);
    info.add(star);
  }
  
  rowCount = t.getRowCount();
}

void printStars()
{
  for(int i = 0; i < rowCount; i++)
  {
    Star.printInfo();
  }
}

void drawGuidelines()
{
  x1 = 0;
  y1 = 50;
  x2 = 0;
  y2 = 750;
  
  stroke(255, 0, 255);
 for(int i = 1; i < 15; i++)
 {
   line((x1*(i*50)), y1, (x2*(i*50)), y2); 
 } 
}

void plotStars()
{
  for(int i = 0; i < rowCount; i++)
  {
    strokeWeight(2);
    line(star.getRow(i).Xg, star.getRow(i).Yg+5, star.getRow(i).Xg, star.getRow(i).Yg-5);
    line(star.getRow(i).Xg+5, star.getRow(i).Yg, star.getRow(i).Xg-5, star.getRow(i).Yg);
    ellipse(star.getRow(i).Xg, star.getRow(i).Yg, star.getRow(i).AbsMag[i]/2, star.getRow(i).AbsMag[i]/2);
    
    textAlign(LEFT);
    text(star.getRow(i).displayName);
    
  }
}



void draw()
{
  
}