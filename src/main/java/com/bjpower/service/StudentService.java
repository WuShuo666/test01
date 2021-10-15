package com.bjpower.service;

import com.bjpower.domain.Student;
import org.springframework.stereotype.Service;

import java.util.List;


public interface StudentService {
    List<Student> queryStudents();
    int addStudent(Student student);
}
