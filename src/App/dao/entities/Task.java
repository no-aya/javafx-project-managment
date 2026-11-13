package App.dao.entities;

import javafx.beans.property.SimpleStringProperty;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;

import java.text.SimpleDateFormat;

public class Task {

    private SimpleStringProperty TaskName;
    private SimpleStringProperty TaskTime;
    private SimpleStringProperty TaskStartDate;
    private SimpleStringProperty TaskEndDate;
    private SimpleStringProperty TaskProgress;
    private SimpleStringProperty TaskColor;
    private SimpleStringProperty TaskDependency;
    private SimpleStringProperty TaskAssinged;

    public Task(String taskName, String taskTime, String taskStartDate,
                String taskEndDate, String taskProgress, String taskColor,
                String taskDependency, String taskAssinged) {
        this(new Builder()
                .name(taskName)
                .time(taskTime)
                .startDate(taskStartDate)
                .endDate(taskEndDate)
                .progress(taskProgress)
                .color(taskColor)
                .dependency(taskDependency)
                .assignedName(taskAssinged));
    }

    private Task(Builder builder) {
        TaskName = new SimpleStringProperty(builder.name);
        TaskTime = new SimpleStringProperty(builder.time);
        TaskStartDate = new SimpleStringProperty(builder.startDate);
        TaskEndDate = new SimpleStringProperty(builder.endDate);
        TaskProgress = new SimpleStringProperty(builder.progress);
        TaskColor = new SimpleStringProperty(builder.color);
        TaskDependency = new SimpleStringProperty(builder.dependency);
        TaskAssinged = new SimpleStringProperty(builder.assignedName);
    }

    public static class Builder {
        private String name;
        private String time;
        private String startDate;
        private String endDate;
        private String progress;
        private String color;
        private String dependency;
        private String assignedName;

        public Builder name(String name) {
            this.name = name;
            return this;
        }

        public Builder time(String time) {
            this.time = time;
            return this;
        }

        public Builder startDate(String startDate) {
            this.startDate = startDate;
            return this;
        }

        public Builder endDate(String endDate) {
            this.endDate = endDate;
            return this;
        }

        public Builder progress(String progress) {
            this.progress = progress;
            return this;
        }

        public Builder color(String color) {
            this.color = color;
            return this;
        }

        public Builder dependency(String dependency) {
            this.dependency = dependency;
            return this;
        }

        public Builder assignedName(String assignedName) {
            this.assignedName = assignedName;
            return this;
        }

        public Task build() {
            return new Task(this);
        }
    }

    public String getTaskName() {
        return TaskName.get();
    }

    public void setTaskName(String taskName) {
        TaskName = new SimpleStringProperty(taskName);
    }

    public String getTaskTime() {
        return TaskTime.get();
    }

    public void setTaskTime(String taskTime) {
        TaskTime = new SimpleStringProperty(taskTime);
    }

    public String getTaskStartDate() {
        return TaskStartDate.get();
    }

    public void setTaskStartDate(String taskStartDate) {
        TaskStartDate = new SimpleStringProperty(taskStartDate);
    }

    public String getTaskEndDate() {
        return TaskEndDate.get();
    }

    public void setTaskEndDate(String taskEndDate) {
        TaskEndDate = new SimpleStringProperty(taskEndDate);
    }

    public String getTaskProgress() {
        return TaskProgress.get();
    }

    public void setTaskProgress(String taskProgress) {
        this.TaskProgress = new SimpleStringProperty(taskProgress);
    }

    public String getTaskColor() {
        return TaskColor.get();
    }

    public void setTaskColor(String taskColor) {
        TaskColor = new SimpleStringProperty(taskColor);
    }

    public String getTaskDependency() {
        return TaskDependency.get();
    }

    public void setTaskDependency(String taskDependency) {
        TaskDependency = new SimpleStringProperty(taskDependency);
    }

    public String getTaskAssinged() {
        return TaskAssinged.get();
    }

    public void setTaskAssinged(String taskAssinged) {
        TaskAssinged = new SimpleStringProperty(taskAssinged);
    }
}
