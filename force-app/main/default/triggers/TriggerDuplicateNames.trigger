trigger TriggerDuplicateNames on Account (before insert, before update) 
{
    List<string> names = new List<string>();
    for(Account acc : trigger.new)
    {
        names.add(acc.name);
    }

    List<account> listname = [select name from account where name in: names ];

    for(Account a : trigger.new)
    {
        for(account nm : listname)
        {
            if(a.name == nm.name)
            {
                a.addError('Can not insert duplicate account name');
            }
        }
    }

}