public with sharing class Base256to10conversion {
    public Base256to10conversion(){
        
    }
    public Long convert(string str) {
        //Split IP addresses for conversion
        //Convert IP in Base 256 to Decimal in Base 10
        Long sad = 0;
        String[] sastrl = str.split('\\.');
        List<Long> saintl = new List<Long>();
        Long a;
        Long b;
        Double pow;
        for(String s : sastrl){
            a = Long.valueOf(s); 
            saintl.add(a);
        }
        system.debug(saintl);
        //Convert from base 256 to base 10, set pow to 3 for the converison formula
        Double base = 256;
        pow = 3;
        for(Long i : saintl) {
            b = i * Math.pow(base, pow).longValue(); 
            sad += b; 
            pow--;
        }
        system.debug(sad);
        return sad;
    }
}