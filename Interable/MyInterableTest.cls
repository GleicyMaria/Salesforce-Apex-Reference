@IsTest
public class MyIterableTest {
    @IsTest
    static void testIterableForLoop(){
        
        List<String> strings = new List<String>{'Hello', 'World!'};
        
        MyIterable stringsIterable = new MyIterable(strings);
        
        for (String str : stringsIterable) {
            System.debug(str);
        }
    }
 
}