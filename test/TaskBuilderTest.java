package App.dao.entities;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TaskBuilderTest {

    @Test
    public void builderPreservesAllEightValues() {
        Task task = new Task.Builder()
                .name("Préparer le rapport")
                .time("2")
                .startDate("2026-11-12")
                .endDate("2026-11-15")
                .progress("35")
                .color("#336699")
                .dependency("Collecter les données")
                .assignedName("Amal")
                .build();

        assertEquals("Préparer le rapport", task.getTaskName());
        assertEquals("2", task.getTaskTime());
        assertEquals("2026-11-12", task.getTaskStartDate());
        assertEquals("2026-11-15", task.getTaskEndDate());
        assertEquals("35", task.getTaskProgress());
        assertEquals("#336699", task.getTaskColor());
        assertEquals("Collecter les données", task.getTaskDependency());
        assertEquals("Amal", task.getTaskAssinged());
    }
}