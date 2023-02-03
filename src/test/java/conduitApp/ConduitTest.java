package conduitApp;

//si la imoprtación no se realiza correctamente para correr un solo tests
import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

class ConduitTest {
    @Test
    void testParallel() {
        Results results = Runner.path("classpath:conduitApp")
                //.outputCucumberJson(true)
                .tags("@consulta")
                .parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}