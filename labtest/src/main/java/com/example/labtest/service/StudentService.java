package com.example.labtest.service;

import com.example.labtest.dao.StudentRepository;
import com.example.labtest.domain.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {
    @Autowired
    StudentRepository studentRepository;
    public List<Student>findAll(){
        return studentRepository.findAll();
    }

    /**
     * 插入学生
     * @param student
     * @return
     */
    public Student insert(Student student){
        return studentRepository.save(student);
    }

    /**
     * 更新学生
     * @param student
     * @return
     */
    public Student update(Student student){
        return studentRepository.save(student);
    }

    /**
     * 查找学生
     * @param id
     * @return
     */
    public Student getById(Long id){
        Student student=studentRepository.findById(id).orElse(null);
        return student;
    }
    public List<Student> getByName(String name){
        List<Student> students=studentRepository.findByName(name);
        return students;
    }
    /**
     * 删除学生
     * @param student
     * @return
     */
    public void delete(Student student){
        studentRepository.delete(student);
    }
    public void delete(Long id){
        Student student=new Student();
        student.setId(id);
        studentRepository.delete(student);
    }
    /**
     * 根据姓名查找
     */

    public List<Student> findByName(String name){
        List<Student> students=studentRepository.findByName(name);
       return students;
    }

}
