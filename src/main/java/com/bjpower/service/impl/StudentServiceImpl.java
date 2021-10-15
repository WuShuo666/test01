package com.bjpower.service.impl;

import com.bjpower.dao.StudentDao;
import com.bjpower.domain.Student;
import com.bjpower.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Resource
    private StudentDao studentDao;

    @Override
    public List<Student> queryStudents() {

        return studentDao.query();
    }
    @Override
    public int addStudent(Student student) {
        return studentDao.add(student);
    }

}
