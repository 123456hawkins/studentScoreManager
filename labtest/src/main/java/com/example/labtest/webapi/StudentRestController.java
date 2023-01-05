package com.example.labtest.webapi;

import com.example.labtest.domain.Student;
import com.example.labtest.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/webapi/student")

public class StudentRestController {
    @Autowired
    private StudentService studentService;
    @GetMapping("/list")
    public List<Student> getAll(){
        List<Student> students=studentService.findAll();
        return students;
    }


    /**
     * 新增学生的方法
      * @param student
     * @return
     */
    @PostMapping("/insert")
    public Student insert(Student student){

        Student student1=studentService.insert(student);
        return student1;

    }

    /**
     * 修改学生信息
     */
    @PutMapping("/update")
    public Student update(Student student){
        Student oldstudent=studentService.getById(student.getId());
        if (StringUtils.isEmpty(student.getPassword())){
            student.setPassword(oldstudent.getPassword());
        }
        student=studentService.update(student);
        return  student;
    }

    /**
     * 删除学生信息
     */
    @DeleteMapping("/delete/{id}")
    public void delete(@PathVariable Long id){
        studentService.delete(id);
    }

    /**
     * 读取学生信息
     */
    @GetMapping("/get/{id}")
    public Student get(@PathVariable Long id){
        Student student=studentService.getById(id);
        student.setPassword("");
        return  student;
    }
    /**
     * 查找学生
     */
    @GetMapping("/search/{name}")
    public List<Student> search(@PathVariable String name){
        List<Student> students=studentService.findByName(name);
        System.out.println(name);
        return students;
    }
}
