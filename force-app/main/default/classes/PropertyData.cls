public with sharing class PropertyData {
    public PropertyData()
     {
        SYtem.debug('In Property data COnstructoer');
    }

    
    public static void display(string name)
    {
        System.debug('Name : '+name);
    }

    public void primeNumber(integer primeNum)
    {
        integer count=0;
        for(integer i = 2 ; i<primeNum; i++)
        {
            if(Math.Mod(primeNum,i) == 0)
            {
            
                count++;
                break;
            }

        }
        if(i == PrimeNum)
        {
            SYstem.debug('Number is prime');
        }
        else
        {
            system.debug('Number is not prime');
        }
    }
}