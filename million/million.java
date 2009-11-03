import java.util.ArrayList;
import java.util.Collections;

class Juks{
    private static final int MAX = 1000000;
    private static ArrayList<Integer> l = new ArrayList<Integer>();

    public static void main(String args[]){
        fillList();

        double hits = 1;
        double hots = 0;
        for(int i=1;i<100;i++){
            int h = hits();
            hots = (((hits*(i-1))+h)/(double) i);
            hits = (((h/hits)/(double) i))*hits;

            System.out.format("%3d ", i);
            System.out.format("%3d ", h);
            System.out.format("%3.5d ", hits);
            System.out.format("%3.5d\n", hots);
        }
        System.out.println(hits);
    }

    private static void fillList(){
        for(int i=0;i<MAX;i++)
            l.add(i);
    }

    private static int hits(){
        Collections.shuffle(l);
        int min=l.get(0);
        int hits=0;
        for(Integer i:l)
            if(i<min){
                min=i;
                hits++;
            }
        return hits;
    }
}
