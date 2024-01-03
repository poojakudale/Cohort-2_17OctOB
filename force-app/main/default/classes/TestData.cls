@isTest public with sharing class TestData
{
   @isTest static void test()
   {
        Test.startTest();
        account acc = new acccount(name = 'Vyoms');
        insert acc;
        Test.StopTest();
   }
}