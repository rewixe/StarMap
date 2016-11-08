class Star {
  
  int hab;
  String displayName;
  float distance;
  float Xg, Yg, Zg;
  float AbsMag;
  
  Star(TableRow row)
  {
    hab = row.getInt(2);
    displayName = row.getString(3);
    distance = row.getFloat(12);
    Xg = row.getFloat(13);
    Yg = row.getFloat(14);
    Zg = row.getFloat(15);
    AbsMag = row.getFloat(16);
  }
  
  void printInfo()
  {
    println(row.getInt("hab")); 
    println(row.getString("displayName")); 
    println(row.getFloat("distance")); 
    println(row.getFloat("Xg")); 
    println(row.getFloat("Yg")); 
    println(row.getFloat("Zg")); 
    println(row.getFloat("AbsMag")); 
  }
}