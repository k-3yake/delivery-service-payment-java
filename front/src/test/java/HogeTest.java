import static org.junit.Assert.*;

import static org.hamcrest.CoreMatchers.*;
import org.junit.Test;

public class HogeTest {

    @Test
    public void hello(){
        assertThat(new Hoge().exec(), is("hello"));
    }


}