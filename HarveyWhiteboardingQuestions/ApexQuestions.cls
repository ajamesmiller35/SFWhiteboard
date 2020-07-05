//#12 Doing this through process automation - Use Process Builder
//          and select when formula evaluates to true
public static void UpdateOldCases(){
    Date old = System.Today() - 100;
    List<Case> oldCases = [SELECT Status FROM Case WHERE LastModifiedDate < :old];
    For(Case c : oldCases) {
        c.Status = 'Closed';
    }
    update oldCases;
}