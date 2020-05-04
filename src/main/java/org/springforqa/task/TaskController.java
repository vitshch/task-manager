package org.springforqa.task;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TaskController {

    private TaskService taskService;

    @Autowired
    public TaskController(TaskService taskService) {
        this.taskService = taskService;
    }

    @GetMapping("/taskList")
    public String getTasks(ModelMap modelMap) {
        modelMap.put("taskList", taskService.getTasks());
        modelMap.put("task", new Task());
        return "taskList";
    }

    @PostMapping("/addTask")
    public String addTask(@ModelAttribute("task") Task task) {
        if (!StringUtils.isEmpty(task)) {
            taskService.addTask(task);
        }
        return "redirect:taskList";
    }
}
