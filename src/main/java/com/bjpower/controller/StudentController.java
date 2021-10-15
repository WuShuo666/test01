package com.bjpower.controller;


import com.bjpower.domain.Student;
import com.bjpower.service.StudentService;
import com.bjpower.service.impl.StudentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class StudentController {
    @Resource
    private StudentService studentService;

    @RequestMapping(value = "/addStudent.do")
    public ModelAndView addStudent(Student student){
        ModelAndView mv = new ModelAndView();
        int rows = studentService.addStudent(student);
        if(rows>0){
            mv.addObject("msg","注册成功");
        }else{
            mv.addObject("msg","注册失败");
        }
        mv.setViewName("result");
        return mv;
    }
    @RequestMapping(value = "/queryStudent.do")
    @ResponseBody
    public List<Student> queryStudent(){
        return studentService.queryStudents();
    }
}
