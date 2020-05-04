package org.springforqa.task;

import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

@Service
public class TaskService {

    private List<Task> tasks;

    @PostConstruct
    public void init() {
        tasks = new ArrayList<>();
    }

    public void addTask(Task task) {
//        task.setUuid(UUID.randomUUID().toString());
        tasks.add(task);
    }

    public List<Task> getTasks() {
        return tasks;
    }

}
