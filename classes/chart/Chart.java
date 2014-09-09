   import java.awt.*;
   import java.awt.font.*;
   import java.awt.geom.*;
   import javax.swing.*;
   
   /**
    * @version 1.33 2007-06-12
    * @author Cay Horstmann
    * slightly modified to run with Java 1.4
   */
  public class Chart extends JApplet
  {
     public void init()
     {
        EventQueue.invokeLater(new Runnable()
           {
              public void run()
              {
                 String v = getParameter("values");
                 if (v == null) return;
                 int n = Integer.parseInt(v);
                 double[] values = new double[n];
                 String[] names = new String[n];
                 String[] colors = new String[n];
                 for (int i = 0; i < n; i++)
                 {
                    values[i] = Double.parseDouble(getParameter("value." + (i + 1)));
                    names[i] = getParameter("name." + (i + 1));
                    colors[i] = getParameter("color." + (i + 1));
                 }
  
                 add(new ChartComponent(values, names, getParameter("title"), colors));
              }
           });
     }
  }
  
  /**
   * A component that draws a bar chart.
   */
  class ChartComponent extends JComponent
  {
     /**
      * Constructs a ChartComponent.
      * @param v the array of values for the chart
      * @param n the array of names for the values
      * @param t the title of the chart
      */
     public ChartComponent(double[] v, String[] n, String t, String[] c)
     {
        values = v;
        names = n;
        title = t;
        colors = c;
     }
  
     public void paintComponent(Graphics g)
     {
        String strtext = "";
        String strval = "";

        Graphics2D g2 = (Graphics2D) g;
  
        // compute the minimum and maximum values
        if (values == null) return;
        double minValue = 0;
        double maxValue = 0;
        for (int i = 0; i < values.length; ++i)
        {
            double v = values[i];
            if (minValue > v) minValue = v;
            if (maxValue < v) maxValue = v;
        }
        if (maxValue == minValue) return;
  
        int panelWidth  = getWidth();
        int panelHeight = getHeight();
  
        Font titleFont = new Font("SansSerif", Font.BOLD, 20);
        Font labelFont = new Font("SansSerif", Font.PLAIN, 10);
  
        // compute the extent of the title
        FontRenderContext context = g2.getFontRenderContext();
        Rectangle2D titleBounds = titleFont.getStringBounds(title, context);
        
        double titleWidth = titleBounds.getWidth();
        double top        = titleBounds.getHeight();
  
        // draw the title
        double y = -titleBounds.getY(); // ascent
        double x = (panelWidth - titleWidth) / 2;
        g2.setFont(titleFont);
        g2.drawString(title, (float) x, (float) y);
  
        // compute the extent of the bar labels
        LineMetrics labelMetrics = labelFont.getLineMetrics("", context);
        double bottom = labelMetrics.getHeight();
  
        y = panelHeight - labelMetrics.getDescent();
        g2.setFont(labelFont);
  
        // get the scale factor and width for the bars
        double scale = (panelHeight - top - bottom) / (maxValue - minValue);
        int barWidth = panelWidth / values.length;
  
       // draw the bars
       for (int i = 0; i < values.length; ++i)
       {
          // get the coordinates of the bar rectangle
          double x1 = i * barWidth + 1;
          double y1 = top;
          double height = values[i] * scale;
          if (values[i] >= 0) y1 += (maxValue - values[i]) * scale;
          else
          {
             y1 += maxValue * scale;
             height = -height;
          }
 
          // fill the bar and draw the bar outline
          Rectangle2D rect = new Rectangle2D.Double(x1, y1, barWidth - 2, height);
          //g2.setPaint(Color.RED);
          g2.setPaint(Color.decode(colors[i]));
          g2.fill(rect);
          g2.setPaint(Color.BLACK);
          g2.draw(rect);
 
          // draw the centered label below the bar
          strval = String.valueOf(values[i]);
          strtext = names[i]+" ("+strval+")";
          Rectangle2D labelBounds = labelFont.getStringBounds(strtext, context);
 
          double labelWidth = labelBounds.getWidth();
          x = x1 + (barWidth - labelWidth) / 2;
          //g2.drawString(names[i], (float) x, (float) y);
          g2.drawString(strtext, (float) x, (float) y);
       }
    }
 
    private double[] values;
    private String[] names;
    private String[] colors;
    private String title;
 }

