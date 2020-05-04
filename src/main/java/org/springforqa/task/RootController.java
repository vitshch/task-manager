package org.springforqa.task;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class RootController {

    @GetMapping
    public String getRoot(ModelMap modelMap) {
        modelMap.put("message", "Task Manager Application");
        return "index";
    }

}
