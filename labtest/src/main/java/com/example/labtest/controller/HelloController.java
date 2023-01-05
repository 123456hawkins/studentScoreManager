package com.example.labtest.controller;

import com.example.labtest.domain.Student;
import com.example.labtest.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
@Controller
public class HelloController {
    @Autowired
    StudentService studentService;

    @RequestMapping("/student/list")
    public String list(Model model){
        List<Student> students=studentService.findAll();
        model.addAttribute("data",students);
        return "/student/list";
    }

    @GetMapping( "/student/{name}")
    public String FindStudentByName(String name,Model model1){
        List<Student> students=studentService.findByName(name);
        model1.addAttribute("data1",students);
        students=studentService.findAll();
        model1.addAttribute("data",students);
        System.out.println(students);
        return "/student/list";
    }
}

