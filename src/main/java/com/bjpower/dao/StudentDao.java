package com.bjpower.dao;

import com.bjpower.domain.Student;

import java.util.List;

public interface StudentDao {
    int add(Student student);
    List<Student> query();
}
